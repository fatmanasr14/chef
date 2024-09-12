import 'package:chefapp/core/local/app_localization.dart';
import 'package:chefapp/core/uitls/app_color.dart';
import 'package:chefapp/core/uitls/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
             Image.asset(
                "assets/login.png",
              ),
            Padding(
              padding: const EdgeInsets.only(left: 110,right: 110,top: 80),
              child: Text(AppStrings.welcomeBack.tr(context),
              style: TextStyle(
                        color: appcolor.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.sp),
              ),
            )
          ],
        )
      ),
    );
  }
}