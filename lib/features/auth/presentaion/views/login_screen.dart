import 'dart:ui';

import 'package:chefapp/features/auth/presentaion/cubit/cubit/login_cubit.dart';
import 'package:chefapp/features/auth/presentaion/cubit/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chefapp/core/local/app_localization.dart';
import 'package:chefapp/core/uitls/app_color.dart';
import 'package:chefapp/core/uitls/app_strings.dart';
import 'package:chefapp/core/widgets/custom_textformfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 230.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: appcolor.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.sp),
                    bottomRight: Radius.circular(30.sp),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110, right: 110, top: 80),
                child: Text(
                  AppStrings.welcomeBack.tr(context),
                  style: TextStyle(
                    color: appcolor.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
                child: BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    return Form(
                      key: BlocProvider.of<LoginCubit>(context).loginKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 250
                                  .h), // To position the fields below the container
                          CustomTextformfield(
                            hint: AppStrings.email.tr(context),
                            c1: Color.fromARGB(234, 51, 91, 137),
                            controller: BlocProvider.of<LoginCubit>(context).emailcontroller,
                            icon: Icons.email_outlined,
                            validate: (data) {
                              if (data!.isEmpty || !data.contains('@gmail.com')) {
                                return AppStrings.pleaseEnterValidEmail
                                    .tr(context);
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 32.h),
                          ///password/////////////////////////////////////////////
                          CustomTextformfield(
                            hint: AppStrings.password.tr(context),
                            controller: BlocProvider.of<LoginCubit>(context).passwordcontroller,
                            c1: Color.fromARGB(234, 51, 91, 137),
                            icon: BlocProvider.of<LoginCubit>(context).suffixIcon,
                            isPassword:BlocProvider.of<LoginCubit>(context).isloginPasswordVisibility,
                            suffixIcononPressed: () {
                              BlocProvider.of<LoginCubit>(context).changeLoginPasswordIcon();
                            },
                            validate: (data) {
                              if (data!.length < 6 || data.isEmpty) {
                                return AppStrings.pleaseEnterValidPassword
                                    .tr(context);
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Row(
                            children: [
                              Text(AppStrings.forgetPassword.tr(context)),
                            ],
                          ),
                          SizedBox(
                            height: 32.h,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: appcolor.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: Size(300, 50), //width
                                maximumSize: Size(300, double.infinity),
                              ),
                              onPressed: () {
                                if(BlocProvider.of<LoginCubit>(context).loginKey.currentState!.validate()){
                                   print("login");
                                }
                              },
                              child: Text(
                                AppStrings.signIn.tr(context),
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )),
                          SizedBox(
                            height: 32.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Dont have account?",
                                  style: TextStyle(
                                    fontSize: 19.sp,
                                    decoration: TextDecoration.underline,
                                    decorationColor: appcolor.primary,
                                    color: Color.fromARGB(255, 15, 20, 15),
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 19.sp, color: appcolor.primary),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
