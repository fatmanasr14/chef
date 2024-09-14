import 'dart:convert';

import 'package:chefapp/core/database/api/endpoint.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginModel {
  final String message;
  final String token;

  LoginModel({
     required this.message,
     required this.token,
  });



  factory LoginModel.fromJson(Map<String, dynamic> jsonData) {
    return LoginModel(
      message: jsonData[ApiKeys.message],
      token: jsonData[ApiKeys.token] ,
    );
  }


 }
