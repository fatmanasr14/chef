import 'package:chefapp/features/auth/presentaion/views/change_lang_screen.dart';
import 'package:chefapp/features/auth/presentaion/views/login_screen.dart';
import 'package:chefapp/features/auth/presentaion/views/reset_password_screen.dart';
import 'package:chefapp/features/auth/presentaion/views/sendcode_screen.dart';
import 'package:chefapp/features/auth/presentaion/views/splashscreen.dart';
import 'package:chefapp/features/menu/presentaion/views/add_meal_screen.dart';
import 'package:chefapp/features/menu/presentaion/views/menu_home_screen.dart';
import 'package:chefapp/features/profile/presentaion/views/change_password_screen.dart';
import 'package:chefapp/features/profile/presentaion/views/profile_home_screen.dart';
import 'package:chefapp/features/profile/presentaion/views/setting_screen.dart';
import 'package:chefapp/features/profile/presentaion/views/update_profile_screen.dart';
import 'package:flutter/material.dart';

class Routes{
  static const String intitlRoute = '/';
  static const String changeLang = '/changeLang';
  static const String login = '/login';
  static const String sendCode = '/sendCode';
  static const String restPassword = '/restPassword';
  static const String menuHome = '/menuHome';
  static const String addMeal = '/addMeal';
  static const String profileHome = '/profileHome';
  static const String updateProfile = '/updateProfile';
  static const String setting = '/setting';
  static const String changePassword = '/changePassword';
  static const String home = '/home';

}

class AppRoute{
   static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.intitlRoute:
        return MaterialPageRoute(builder: (_) => const Splashscreen());

      case Routes.changeLang:
        return MaterialPageRoute(builder: (_) => const ChangeLangScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.sendCode:
        return MaterialPageRoute(builder: (_) => const SendcodeScreen());
      case Routes.restPassword:
        return MaterialPageRoute(builder: (_) =>  const ResetPasswordScreen());

      case Routes.menuHome:
        return MaterialPageRoute(builder: (_) => const MenuHomeScreen());
      case Routes.addMeal:
        return MaterialPageRoute(builder: (_) => const AddMealScreen());

      case Routes.profileHome:
        return MaterialPageRoute(builder: (_) => const ProfileHomeScreen());
      case Routes.updateProfile:
        return MaterialPageRoute(builder: (_) => const UpdateProfileScreen());
      case Routes.setting:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());

        default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No Found Route'),
                  ),
                ));
    }
}}