import 'package:chefapp/app/app.dart';
import 'package:chefapp/core/bloc_cubit/cubit/global_cubit.dart';
import 'package:chefapp/core/database/cacheHelper/cachehelper.dart';
import 'package:chefapp/core/services/service_locator.dart';
import 'package:chefapp/features/auth/presentaion/cubit/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initservicelocator();
  await sl<CacheHelper>().init();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => sl<GlobalCubit>()..getCachedLang(),
      ),
      BlocProvider(
        create: (context) => sl<LoginCubit>(),
      ),
    ],
    child: const MyApp(),
  ));
}
