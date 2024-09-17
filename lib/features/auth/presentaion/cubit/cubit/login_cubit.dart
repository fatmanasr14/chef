import 'package:bloc/bloc.dart';
import 'package:chefapp/core/database/api/endpoint.dart';
import 'package:chefapp/core/database/cacheHelper/cachehelper.dart';
import 'package:chefapp/core/services/service_locator.dart';
import 'package:chefapp/features/auth/data/models/logim_model.dart';
import 'package:chefapp/features/auth/data/repository/auth_repository.dart';
import 'package:chefapp/features/auth/presentaion/cubit/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitial());
  final AuthRepository authRepo;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool isloginPasswordVisibility = true;
  IconData suffixIcon = Icons.visibility;

  changeLoginPasswordIcon() {
    isloginPasswordVisibility = !isloginPasswordVisibility;
    suffixIcon =
        isloginPasswordVisibility ? Icons.visibility : Icons.visibility_off;
    emit(changeLoginPasswordSuffixIcon());
  }


LoginModel? loginModel;
  void login() async {
    emit(LoginLodingState());
    final result = await authRepo.Login(
        email: emailcontroller.text, password: passwordcontroller.text);

    //on sucess
    result.fold((l) => emit(LoginErrorState(l)), 
    (r) {
      loginModel=r;
      sl<CacheHelper>().saveData(key: ApiKeys.token, value: r.token);
      emit(LoginSucessState());
    });
  }
}
