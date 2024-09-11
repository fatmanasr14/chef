import 'package:chefapp/core/uitls/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

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
              child: Image.asset("assets/chef_1.png",scale: 3,)),
            SizedBox(height: 12.h,),
            Text("Chef App",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: appcolor.white),)

          ],
        ),
      ),
    );
  }
}