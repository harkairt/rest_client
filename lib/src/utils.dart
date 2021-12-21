import 'package:dartz/dartz.dart';
import 'package:rest_client/src/rest_client_base.dart';

bool isNullable<V>() => null is V;
bool isVoid<V>() => typesEqual<void, V>();
bool typesEqual<T1, T2>() => T1 == T2;

bool isString(dynamic value) => value is String || tryCast<String>(value) != null;
bool isJsonMapType<T>() => typesEqual<Map<String, dynamic>, T>();
bool isJsonMap(dynamic value) => value is Map<String, dynamic> || tryCast<Map<dynamic, dynamic>>(value) != null;
bool isJsonListType<T>() => typesEqual<List<dynamic>, T>();
bool isJsonList(dynamic value) => value is List<dynamic> || tryCast<List<dynamic>>(value) != null;

V? tryCast<V>(dynamic value, {V? fallback}) {
  try {
    return value as V;
  } on TypeError catch (_) {
    return fallback;
  }
}

typedef JsonList = List<dynamic>;
typedef JsonMap = Map<String, dynamic>;

/*
  0
  300
  600
  900
  1200
  1500
  1800
  2100

  SUM: 8,4s
*/
Future<Either<ApiError<E>, V>> retryWhenConnectionError<E, V>(
  Future<Either<ApiError<E>, V>> Function() eitherFn,
) =>
    retryWhen<ApiError<E>, V>(
      eitherFn,
      times: 7,
      delayIncrement: Duration(milliseconds: 300),
      predicate: (response) => response.fold(
        (apiError) => apiError.maybeMap(
          connection: (connection) => true,
          orElse: () => false,
        ),
        (dynamic _) => false,
      ),
    );

Future<Either<E, T>> retryWhen<E, T>(
  Future<Either<E, T>> Function() eitherFn, {
  required bool Function(Either<E, T>) predicate,
  int times = 5,
  Duration delay = Duration.zero,
  Duration delayIncrement = const Duration(milliseconds: 500),
}) async {
  await Future<void>.delayed(delay);
  final result = await eitherFn();

  if (times < 1) {
    return result;
  }

  if (predicate(result)) {
    return retryWhen(
      eitherFn,
      predicate: predicate,
      times: times - 1,
      delay: delay + delayIncrement,
      delayIncrement: delayIncrement,
    );
  } else {
    return result;
  }
}

Future<Either<E, T>> retryWhenLeft<E, T>(
  Future<Either<E, T>> Function() eitherFn, {
  int times = 1,
  Duration delay = Duration.zero,
  Duration delayIncrement = const Duration(milliseconds: 500),
}) async =>
    retryWhen(eitherFn, predicate: (response) => response.isLeft());


// extension on Either<ApiError, Object?> {
//   void reportError({required String path, required String method}) {
//     fold(
//       (apiError) {
//         Sentry.captureException(
//           apiError.exception ?? apiError.error,
//           stackTrace: apiError.error?.stackTrace ?? StackTrace.current,
//           withScope: (scope) {
//             scope.setContexts('api_path', path);
//             scope.setContexts('api_method', method);
//             scope.setContexts('api_error', apiError.message);
//           },
//         );
//       },
//       (_) {},
//     );
//   }
// }
