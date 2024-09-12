import 'package:chefapp/core/bloc_cubit/cubit/global_cubit.dart';
import 'package:chefapp/core/database/cacheHelper/cachehelper.dart';
import 'package:get_it/get_it.dart';

final sl =GetIt.instance;

void initservicelocator(){
  sl.registerLazySingleton(() => GlobalCubit());
  sl.registerLazySingleton(()=>CacheHelper());
}