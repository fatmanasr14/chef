import 'package:bloc/bloc.dart';
import 'package:chefapp/features/auth/presentaion/cubit/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';



class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  GlobalKey<FormState>  loginKey = GlobalKey<FormState>();
  TextEditingController emailcontroller =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();
  bool isloginPasswordVisibility=true;
  IconData suffixIcon=Icons.visibility;

  changeLoginPasswordIcon(){
    isloginPasswordVisibility=!isloginPasswordVisibility;
    suffixIcon=isloginPasswordVisibility?Icons.visibility : Icons.visibility_off;
    emit(changeLoginPasswordSuffixIcon());
  }
}
