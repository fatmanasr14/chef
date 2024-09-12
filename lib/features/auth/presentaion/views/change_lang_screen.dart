import 'package:chefapp/core/uitls/app_color.dart';
import 'package:flutter/material.dart';
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
            Image.asset("assets/screen1.png",),
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
                    "Welcome to Chef App",
                    style: TextStyle(
                        color: appcolor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.sp),
                  ),
                   SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Please Choose Your Language",
                    style: TextStyle(
                        color: appcolor.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    
                    SizedBox(
                      width: 140.w,
                      height: 48.h,
                      child: ElevatedButton(onPressed: (){}, child: Text("English",style: TextStyle(
                        fontWeight: FontWeight.w800
                      ),),
                      style: ElevatedButton.styleFrom(
                              backgroundColor:appcolor.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize: Size(100, 50), //width
                              maximumSize: Size(200, double.infinity),
                            )
                            ,)
                            ),
                      Spacer(),
                    SizedBox(
                      width: 140.w,
                      height: 48.h,
                      child: ElevatedButton(onPressed: (){},
                       child: Text("العربيه",style: TextStyle(
                        fontWeight: FontWeight.w900
                      ),),
                      style: ElevatedButton.styleFrom(
                              backgroundColor:appcolor.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              minimumSize: Size(100, 50), //width
                              maximumSize: Size(200, double.infinity),
                            )
                      )),
                  ],),
                  SizedBox(height: 200,)

                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
