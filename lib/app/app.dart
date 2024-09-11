import 'package:chefapp/core/routes/app_route.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.intitlRoute,
      onGenerateRoute: AppRoute.generateRoute,
      title: 'Flutter Demo',

      home: Scaffold()
    );
  }
}