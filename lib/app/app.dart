import 'package:chefapp/core/routes/app_route.dart';
import 'package:chefapp/features/auth/presentaion/views/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
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