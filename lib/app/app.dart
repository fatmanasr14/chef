import 'package:chefapp/core/local/app_localization.dart';
import 'package:chefapp/core/routes/app_route.dart';
import 'package:chefapp/features/auth/presentaion/views/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          AppLocalizations.delegate
        ],
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ar', 'EG'),
        ],
        locale: const Locale('ar'),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.intitlRoute,
        onGenerateRoute: AppRoute.generateRoute,
        title: 'Flutter Demo',
        home: Splashscreen(),
       
      );
      },
     
    );
  }
}