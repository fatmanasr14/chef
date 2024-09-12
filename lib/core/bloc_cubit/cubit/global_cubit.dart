
import 'package:chefapp/core/bloc_cubit/cubit/global_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());
  
  bool isArabic=false;
  String langcode='en';

  void changelang(){
    emit(changelangloading());
    isArabic=!isArabic;
    langcode=isArabic?'en':'ar';
    emit(changelangSucess());

  }
}
