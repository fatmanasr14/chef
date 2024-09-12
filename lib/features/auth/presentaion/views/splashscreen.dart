import 'package:chefapp/core/local/app_localization.dart';
import 'package:chefapp/core/routes/app_route.dart';
import 'package:chefapp/core/uitls/app_color.dart';
import 'package:chefapp/core/uitls/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    navigateAfterThreeSecond();
    // TODO: implement initState
    super.initState();
  }

  void navigateAfterThreeSecond(){
    Future.delayed(Duration(seconds: 3)).then((value){
      Navigator.pushNamed(context, Routes.changeLang);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.primary,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 220,),
            SizedBox(
              height: 120.h,
              width: 120.w,
              child: Image.asset("assets/chef_1.png",)),
            SizedBox(height: 12.h,),
            Text(AppStrings.chefApp.tr(context),style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: appcolor.white),)

          ],
        ),
      ),
    );
  }
}