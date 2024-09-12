import 'package:chefapp/app/app.dart';
import 'package:chefapp/core/bloc_cubit/cubit/global_cubit.dart';
import 'package:chefapp/core/database/cacheHelper/cachehelper.dart';
import 'package:chefapp/core/services/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  initservicelocator();
  await sl<CacheHelper>().init();
  
  runApp(BlocProvider(
    create: (context) => sl<GlobalCubit>()..getCachedLang(),
    child: const MyApp(),
  ));
}
