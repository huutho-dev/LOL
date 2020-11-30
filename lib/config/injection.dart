import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:lol2/resources/remote/riot_rest_client.dart';

GetIt getIt = GetIt.instance;

/// https://pub.dev/packages/get_it
class Injection {
  static void setupInjection() {
    getIt.registerLazySingleton<Dio>(() {
      final dio = Dio();
      dio.options.connectTimeout = 30 * 1000;
      dio.options.receiveTimeout = 30 * 1000;
      dio.options.sendTimeout = 30 * 1000;
      dio.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options) async {
          Logger().i(options.data);
          return options;
        },
        onResponse: (Response response) async {
          Logger().i(response.data);
          return response;
        },
        onError: (DioError err) async {
          Logger().i(err.error);
          return err;
        },
      ));

      return dio;
    });

    // provide lazy RiotRestClient
    getIt.registerLazySingleton<RiotRestClient>(
            () => RiotRestClient(getIt.get<Dio>()));
  }
}
