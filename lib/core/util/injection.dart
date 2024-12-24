import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/core/util/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupInjection() {
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      ApiServices(
        Dio(),
      ),
    ),
  );
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
}
