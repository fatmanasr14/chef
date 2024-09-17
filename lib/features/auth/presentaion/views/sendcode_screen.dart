import 'package:chefapp/core/local/app_localization.dart';
import 'package:chefapp/core/uitls/app_color.dart';
import 'package:chefapp/core/uitls/app_strings.dart';
import 'package:chefapp/core/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendcodeScreen extends StatelessWidget {
  const SendcodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolor.primary,
        centerTitle: true,
        title: Text(
            style: TextStyle(color: appcolor.white),
            AppStrings.forgetPassword.tr(context)),
      ),
      body: Stack(
        children: [
          //image
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 15),
                      child: Image.asset(
                        "assets/padlock.png",
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(AppStrings.sendResetLinkInfo.tr(context)),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomTextformfield(
                      controller: TextEditingController(),
                      hint: AppStrings.email.tr(context),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: appcolor.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: Size(250, 50), //width
                          maximumSize: Size(250, double.infinity),
                        ),
                        child: Text(
                            style: TextStyle(color: appcolor.white),
                            AppStrings.sendResetLink.tr(context))),
                    SizedBox(
                      height: 35.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
