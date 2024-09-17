import 'package:chefapp/core/bloc_cubit/cubit/global_cubit.dart';
import 'package:chefapp/core/bloc_cubit/cubit/global_state.dart';
import 'package:chefapp/core/local/app_localization.dart';
import 'package:chefapp/core/uitls/app_color.dart';
import 'package:chefapp/core/uitls/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeLangScreen extends StatelessWidget {
  const ChangeLangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/s1.png",
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 120.h,
                    width: 120.w,
                    child: Image.asset(
                      "assets/chef_1.png",
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    AppStrings.welcomeToChefApp.tr(context),
                    style: TextStyle(
                        color: appcolor.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    AppStrings.pleaseChooseYourLanguage.tr(context),
                    style: TextStyle(
                        color: appcolor.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  BlocBuilder<GlobalCubit, GlobalState>(
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 140.w,
                              height: 48.h,
                              child: ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<GlobalCubit>(context).changelang('en');
                                },
                                child: Text(
                                  "English",
                                  style: TextStyle(fontWeight: FontWeight.w800,color: appcolor.primary),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: appcolor.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  minimumSize: Size(100, 50), //width
                                  maximumSize: Size(200, double.infinity),
                                ),
                              )),
                          SizedBox(
                            width: 13.w,
                          ),
                          SizedBox(
                              width: 140.w,
                              height: 48.h,
                              child: ElevatedButton(
                                  onPressed: () {
                                    BlocProvider.of<GlobalCubit>(context).changelang('ar');
                                  },
                                  child: Text(
                                    "العربيه",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w900,color: appcolor.primary),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: appcolor.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    minimumSize: Size(100, 50), //width
                                    maximumSize: Size(200, double.infinity),
                                  ))),
                        ],
                      );
                    },
                  ),
                  SizedBox(
                    height: 200,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
