
import 'package:chefapp/core/bloc_cubit/cubit/global_state.dart';
import 'package:chefapp/core/database/cacheHelper/cachehelper.dart';
import 'package:chefapp/core/services/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());
  
 // bool isArabic=false;
  String langcode='en';

  void changelang(String codelang) async{
    emit(changelangloading());
    ///isArabic=!isArabic;
    langcode=codelang;
    await sl<CacheHelper>().cacheLanguage(codelang);
    emit(changelangSucess());

  }

  void getCachedLang(){
    emit(changelangloading());
    final cachedlang=sl<CacheHelper>().getCachedLanguage();
    langcode=cachedlang;
    emit(changelangSucess());
  }
}
