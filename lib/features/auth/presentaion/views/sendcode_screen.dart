import 'package:chefapp/core/local/app_localization.dart';
import 'package:chefapp/core/uitls/app_color.dart';
import 'package:chefapp/core/uitls/app_strings.dart';
import 'package:flutter/material.dart';

class SendcodeScreen extends StatelessWidget {
  const SendcodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: appcolor.primary,
        centerTitle: true,
        title: Text(style: TextStyle(color: appcolor.white),AppStrings.sendResetLink.tr(context)),),
      body: Stack(
        children: [
        //image
         Image.asset(
              "assets/padlock.png",
            ),
        ],
      ),

    );
  }
}