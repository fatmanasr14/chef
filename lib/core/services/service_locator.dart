import 'package:chefapp/core/bloc_cubit/cubit/global_cubit.dart';
import 'package:chefapp/core/database/api/api_consumer.dart';
import 'package:chefapp/core/database/api/dio_consumer.dart';
import 'package:chefapp/core/database/cacheHelper/cachehelper.dart';
import 'package:chefapp/features/auth/data/repository/auth_repository.dart';
import 'package:chefapp/features/auth/presentaion/cubit/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl =GetIt.instance;

void initservicelocator(){
  //cubits
  sl.registerLazySingleton(() => GlobalCubit());
  sl.registerLazySingleton(() => LoginCubit(sl()));
  //auth
  sl.registerLazySingleton(() => AuthRepository());
  //api
  sl.registerLazySingleton(()=>CacheHelper());
  sl.registerLazySingleton<ApiConsumer>(()=>DioConsumer(sl()));
  sl.registerLazySingleton(()=>Dio());
}