// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rest_client/src/utils.dart';

part 'rest_client.freezed.dart';

@freezed
class ApiError<E> with _$ApiError<E> {
  const ApiError._();
  const factory ApiError.response({E? response, required int code, Exception? exception, Error? error}) =
      MessageApiError<E>;
  const factory ApiError.timeout({Exception? exception, Error? error}) = TimeoutApiError<E>;
  const factory ApiError.connection({Exception? exception, Error? error}) = ConnectionApiError<E>;
  const factory ApiError.cancel({Exception? exception, Error? error}) = CancelApiError<E>;
  const factory ApiError.other(String? msg, {Exception? exception, Error? error}) = OtherApiError<E>;

  String get message => map(
        response: (response) => response.response?.toString() ?? '',
        timeout: (timeout) => 'Request timed out',
        cancel: (cancel) => 'Request cancelled',
        connection: (connection) => 'Connection error',
        other: (other) => other.msg ?? '',
      );

  int? get code => map(
        response: (response) => response.code,
        timeout: (timeout) => null,
        cancel: (cancel) => null,
        connection: (connection) => null,
        other: (other) => null,
      );
}

enum RestClientLoggingLevel { none, path, requestPayload, responsePayload, payload }

class RestClient {
  RestClient(
    this._dio, {
    this.on401,
    this.loggingLevel = RestClientLoggingLevel.payload,
    this.crashReporter,
    this.logger,
  });

  final Dio _dio;
  Function()? on401;
  RestClientLoggingLevel loggingLevel;
  Function({required String path, required String method, required ApiError error})? crashReporter;
  Function(String)? logger;

  Future<Either<ApiError<E>, V>> get<VR, V, ER, E>(
    String path, {
    required V Function(VR value) mapValue,
    required CancelToken cancelToken,
    E Function(ER value)? mapError,
    Options? options,
    Map<String, dynamic>? queryParameters,
    bool crashReporting = true,
    RestClientLoggingLevel? loggingLevel,
  }) async {
    final id = _requestLog<void>(method: 'GET', path: path, loggingLevel: loggingLevel);
    final response = await retryWhenConnectionError<E, V>(
      () => _get(
        path,
        mapValue: mapValue,
        mapError: mapError,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        options: options,
      ),
    );
    _responseLog<V>(id: id, method: 'GET', path: path, response: response, loggingLevel: loggingLevel);
    response.fold(
      (error) {
        if (crashReporting) {
          crashReporter?.call(path: path, method: 'GET', error: error);
        }
      },
      (_) {},
    );

    return response;
  }

  Future<Either<ApiError<E>, V>> post<P, VR, V, ER, E>(
    String path, {
    required P payload,
    required CancelToken cancelToken,
    required V Function(VR value) mapValue,
    E Function(ER value)? mapError,
    Options? options,
    bool crashReporting = true,
    RestClientLoggingLevel? loggingLevel,
  }) async {
    final id = _requestLog<P>(method: 'POST', path: path, payload: payload, loggingLevel: loggingLevel);
    final response = await retryWhenConnectionError<E, V>(
      () => _post(
        path,
        payload: payload,
        mapValue: mapValue,
        mapError: mapError,
        cancelToken: cancelToken,
        options: options,
      ),
    );
    _responseLog<V>(id: id, method: 'POST', path: path, response: response, loggingLevel: loggingLevel);
    response.fold(
      (error) {
        if (crashReporting) {
          crashReporter?.call(path: path, method: 'POST', error: error);
        }
      },
      (_) {},
    );
    return response;
  }

  Future<Either<ApiError<E>, V>> put<P, VR, V, ER, E>(
    String path, {
    required P payload,
    required CancelToken cancelToken,
    required V Function(VR value) mapValue,
    E Function(ER value)? mapError,
    Options? options,
    bool crashReporting = true,
    RestClientLoggingLevel? loggingLevel,
  }) async {
    final id = _requestLog<P>(method: 'PUT', path: path, payload: payload, loggingLevel: loggingLevel);
    final response = await retryWhenConnectionError<E, V>(
      () => _put(
        path,
        payload: payload,
        mapValue: mapValue,
        mapError: mapError,
        cancelToken: cancelToken,
        options: options,
      ),
    );
    _responseLog<V>(id: id, method: 'PUT', path: path, response: response, loggingLevel: loggingLevel);
    response.fold(
      (error) {
        if (crashReporting) {
          crashReporter?.call(path: path, method: 'PUT', error: error);
        }
      },
      (_) {},
    );
    return response;
  }

  Future<Either<ApiError<E>, V>> delete<VR, V, ER, E>(
    String path, {
    required CancelToken cancelToken,
    required V Function(VR value) mapValue,
    E Function(ER value)? mapError,
    Options? options,
    bool crashReporting = true,
    RestClientLoggingLevel? loggingLevel,
  }) async {
    final id = _requestLog<void>(method: 'DELETE', path: path, loggingLevel: loggingLevel);
    final response = await retryWhenConnectionError<E, V>(
      () => _delete(
        path,
        mapValue: mapValue,
        mapError: mapError,
        cancelToken: cancelToken,
        options: options,
      ),
    );
    _responseLog<V>(id: id, method: 'DELETE', path: path, response: response, loggingLevel: loggingLevel);
    response.fold(
      (error) {
        if (crashReporting) {
          crashReporter?.call(path: path, method: 'DELETE', error: error);
        }
      },
      (_) {},
    );
    return response;
  }

  Future<Either<ApiError<E>, V>> _get<VR, V, ER, E>(
    String path, {
    required V Function(VR value) mapValue,
    required CancelToken cancelToken,
    E Function(ER value)? mapError,
    Options? options,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        path,
        options: options,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
      );

      return _handleResponse<E, VR, V>(response, mapValue);
    } on Exception catch (e) {
      return Left(_handleError<ER, E>(e, mapError));
    }
  }

  Future<Either<ApiError<E>, V>> _post<P, VR, V, ER, E>(
    String path, {
    required P payload,
    required CancelToken cancelToken,
    required V Function(VR value) mapValue,
    E Function(ER value)? mapError,
    Options? options,
  }) async {
    try {
      if (!(isJsonList(payload) || isJsonMap(payload) || payload is FormData || payload == null)) {
        return Left(ApiError.other(
          'Payload must be either List<dynamic>, Map<String, dynamic>, FormData or null. It is ${payload.runtimeType}',
        ));
      }

      final response = await _dio.post<dynamic>(path, data: payload, options: options, cancelToken: cancelToken);
      return _handleResponse<E, VR, V>(response, mapValue);
    } on Exception catch (e) {
      return Left(_handleError<ER, E>(e, mapError));
    }
  }

  Future<Either<ApiError<E>, V>> _put<P, VR, V, ER, E>(
    String path, {
    required P payload,
    required CancelToken cancelToken,
    required V Function(VR value) mapValue,
    E Function(ER value)? mapError,
    Options? options,
  }) async {
    try {
      if (!(isJsonList(payload) || isJsonMap(payload) || payload is FormData || payload == null)) {
        return Left(ApiError.other(
          'Payload must be either List<dynamic>, Map<String, dynamic>, FormData or null. It is ${payload.runtimeType}',
        ));
      }

      final response = await _dio.put<dynamic>(path, data: payload, options: options, cancelToken: cancelToken);
      return _handleResponse<E, VR, V>(response, mapValue);
    } on Exception catch (e) {
      return Left(_handleError<ER, E>(e, mapError));
    }
  }

  Future<Either<ApiError<E>, V>> _delete<VR, V, ER, E>(
    String path, {
    required CancelToken cancelToken,
    required V Function(VR value) mapValue,
    E Function(ER value)? mapError,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete<dynamic>(path, options: options, cancelToken: cancelToken);
      return _handleResponse<E, VR, V>(response, mapValue);
    } on Exception catch (e) {
      return Left(_handleError<ER, E>(e, mapError));
    }
  }

  Future<Either<ApiError<E>, V>> _handleResponse<E, VR, V>(
    Response<dynamic> response,
    V Function(VR value) mapValue,
  ) async {
    final dynamic data = response.data;

    if (data == null) {
      if (isNullable<V>()) {
        return Right(null as V);
      } else {
        return Left(
          ApiError.other('Success status (${response.statusCode}) but null data, although V ($V) is non-nullable.'),
        );
      }
    } else {
      try {
        final casted = tryCast<VR>(data);
        if (casted != null) {
          try {
            return Right(mapValue(data as VR));
          } on Exception catch (e) {
            return Left(ApiError.other('Could not mapValue. ${e.toString()}', exception: e));
          } on Error catch (e) {
            return Left(ApiError.other('Could not mapValue. ${e.toString()}', error: e));
          }
        }

        if (isString(data) && (isJsonListType<VR>() || isJsonMapType<VR>())) {
          final dynamic jsonData = json.decode(data as String);
          final castedJson = tryCast<VR>(jsonData);

          if (castedJson != null) {
            try {
              return Right(mapValue(castedJson));
            } on Exception catch (e) {
              return Left(ApiError.other('Could not mapValue. ${e.toString()}', exception: e));
            } on Error catch (e) {
              return Left(ApiError.other('Could not mapValue. ${e.toString()}', error: e));
            }
          } else {
            return Left(ApiError.other('Could not cast ${castedJson.runtimeType} to $VR'));
          }
        }

        return Left(ApiError.other('Could not cast ${data.runtimeType} to $VR'));
      } on Error catch (e) {
        return Left(ApiError.other('Could not parse ${data.runtimeType} as $VR. $data', error: e));
      } on FormatException catch (e) {
        return Left(ApiError.other('Could not parse ${data.runtimeType} as $VR. $data', exception: e));
      }
    }
  }

  ApiError<E> _handleError<ER, E>(
    Exception e,
    E Function(ER value)? mapError,
  ) {
    if (e is DioError) {
      if (e.type == DioErrorType.connectTimeout ||
          e.type == DioErrorType.sendTimeout ||
          e.type == DioErrorType.receiveTimeout) {
        return ApiError.timeout(exception: e);
      }

      if (e.type == DioErrorType.cancel) {
        return ApiError.cancel(exception: e);
      }

      if (e.type == DioErrorType.other) {
        return ApiError.other(e.message, exception: e);
      }

      if (e.type == DioErrorType.response && e.response != null) {
        final dynamic data = e.response!.data;
        final code = e.response!.statusCode ?? 0;

        if (code == 401) {
          on401?.call();
        }

        if (isVoid<E>() || data == null) {
          return ApiError.response(code: e.response!.statusCode!, exception: e);
        }

        if (data != null && mapError != null) {
          try {
            final casted = tryCast<ER>(data);
            if (casted != null) {
              return ApiError.response(response: mapError(casted), code: code, exception: e);
            }

            if (isString(data) && (isJsonListType<ER>() || isJsonMapType<ER>())) {
              final dynamic jsonData = json.decode(data as String);
              final castedJson = tryCast<ER>(jsonData);
              if (castedJson != null) {
                return ApiError.response(response: mapError(castedJson), code: code, exception: e);
              } else {
                return ApiError.other('Could not cast ${jsonData.runtimeType} to $ER', exception: e);
              }
            } else {
              return ApiError.other(
                'Could not cast ${data.runtimeType} to $ER. error response: ${data.toString()}',
                exception: e,
              );
            }
          } on Error catch (e) {
            return ApiError.other('Could not parse ${data.runtimeType} as $ER. $data', error: e);
          } on FormatException catch (e) {
            return ApiError.other('Could not parse ${data.runtimeType} as $ER. $data', exception: e);
          }
        }
      }
    }

    return ApiError.other('Non DioError (${e.runtimeType}) - ${e.toString()}', exception: e);
  }

  int _currentRequestId = 0;
  final Map<int, DateTime> _requestsInProgress = {};
  bool get _loggingEnabled => true;

  int _requestLog<P>({
    required String method,
    required String path,
    RestClientLoggingLevel? loggingLevel,
    P? payload,
  }) {
    if (!_loggingEnabled) {
      return 0;
    }
    final _loggingLevel = loggingLevel ?? this.loggingLevel;

    final id = _currentRequestId++;
    _requestsInProgress[id] = DateTime.now();

    if (_loggingLevel != RestClientLoggingLevel.none) {
      logger?.call('-> $method $path');
    }

    if ([RestClientLoggingLevel.requestPayload, RestClientLoggingLevel.payload].contains(_loggingLevel) &&
        payload != null) {
      try {
        final dynamic maybeJson = (payload as dynamic).toJson();
        final formattedJson = JsonEncoder.withIndent(' ').convert(maybeJson);
        logger?.call(formattedJson);
      } on NoSuchMethodError {
        logger?.call(payload.toString());
      }
    }

    return id;
  }

  void _responseLog<V>({
    required int id,
    required String method,
    required String path,
    required Either<ApiError, V> response,
    RestClientLoggingLevel? loggingLevel,
  }) {
    if (!_loggingEnabled) {
      return;
    }
    final _loggingLevel = loggingLevel ?? this.loggingLevel;

    final startTime = _requestsInProgress.remove(id)!;
    final finishTime = DateTime.now();
    final duration = finishTime.difference(startTime);

    response.fold(
      (apiError) {
        if (_loggingLevel != RestClientLoggingLevel.none) {
          logger?.call('<- 📕 (${duration.inMilliseconds} ms) ${"$method (${apiError.code}) $path"}');
        }

        if ([RestClientLoggingLevel.responsePayload, RestClientLoggingLevel.payload].contains(_loggingLevel)) {
          logger?.call(apiError.message);
          logger?.call('');
          if (apiError.exception != null) {
            logger?.call(StackTrace.current.toString());
          }
          if (apiError.error != null) {
            logger?.call(apiError.error.toString());
            logger?.call(apiError.error!.stackTrace.toString());
          }
        }
      },
      (response) {
        if (_loggingLevel != RestClientLoggingLevel.none) {
          logger?.call('<- 📗 (${duration.inMilliseconds} ms) ${"$method $path"}');
        }

        if ([RestClientLoggingLevel.responsePayload, RestClientLoggingLevel.payload].contains(_loggingLevel)) {
          try {
            final dynamic maybeJson = (response as dynamic).toJson();
            final formattedJson = JsonEncoder.withIndent(' ').convert(maybeJson);
            logger?.call(formattedJson);
          } on NoSuchMethodError {
            try {
              if (response is List) {
                final itemJsonList = response.map<dynamic>((dynamic it) {
                  final dynamic maybeJson = (it as dynamic).toJson();
                  return maybeJson;
                }).toList();
                final formattedJson = JsonEncoder.withIndent(' ').convert(itemJsonList);
                logger?.call(formattedJson);
              } else {
                logger?.call(response.toString());
              }
            } on NoSuchMethodError {
              logger?.call(response.toString());
            }
          }
        }
      },
    );
  }
}
