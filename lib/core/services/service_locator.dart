import 'package:chefapp/core/bloc_cubit/cubit/global_cubit.dart';
import 'package:chefapp/core/database/cacheHelper/cachehelper.dart';
import 'package:chefapp/features/auth/presentaion/cubit/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final sl =GetIt.instance;

void initservicelocator(){
  sl.registerLazySingleton(() => GlobalCubit());
  sl.registerLazySingleton(() => LoginCubit());
  sl.registerLazySingleton(()=>CacheHelper());
}