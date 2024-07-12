// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/drawer_example/view/home_screen.dart';
import 'package:getx5_nav2_my_simple_examples/drawer_example/view/lang_settings_screen.dart';
import 'package:getx5_nav2_my_simple_examples/drawer_example/view/theme_settings_screen.dart';



class Routes {
  static const HOME_SCREEN = '/';
  static const THEME_SETTINGS_SCREEN = '/ThemeSettingsScreen';
  static const LANG_SETTINGS_SCREEN = '/LangSettingsScreen';


  static final routes = [
    GetPage(
      name: HOME_SCREEN,
      page: () => const HomeScreen(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: THEME_SETTINGS_SCREEN,
      page: () =>  const ThemeSettingsScreen(),
      transition: Transition.circularReveal,
      preventDuplicates: true,
    ),
    GetPage(
      name: LANG_SETTINGS_SCREEN,
      page: () =>  const LangSettingsScreen(),
      transition: Transition.circularReveal,
      preventDuplicates: true,
    ),
   
  ];
}
