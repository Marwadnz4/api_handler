import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:youtube_apis/cubit/my_cubit.dart';
import 'package:youtube_apis/my_repo.dart';
import 'package:youtube_apis/web_services.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt<MyRepo>()));
  getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt<WebServices>()));
  getIt.registerLazySingleton<WebServices>(() => WebServices(createAndSetupDio()));
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio
    ..options.connectTimeout = const Duration(milliseconds: 20 * 1000)
    ..options.receiveTimeout = const Duration(milliseconds: 10 * 1000);

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    request: true,
    requestBody: true,
  ));
  dio.options.headers["Authorization"] = "Bearer a12dd7088a3f694be04aa18ceb3f30ef422ac8e1d38ee57ba672d95b9c88377c";

  return dio;
}
