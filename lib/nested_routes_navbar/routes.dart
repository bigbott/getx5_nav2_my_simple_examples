// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/nested_routes_navbar/view/home_screen.dart';
import 'package:getx5_nav2_my_simple_examples/nested_routes_navbar/view/lesson_list_screen.dart';
import 'package:getx5_nav2_my_simple_examples/nested_routes_navbar/view/lesson_screen.dart';
import 'package:getx5_nav2_my_simple_examples/nested_routes_navbar/view/listening_page.dart';
import 'package:getx5_nav2_my_simple_examples/nested_routes_navbar/view/reading_page.dart';
import 'package:getx5_nav2_my_simple_examples/nested_routes_navbar/view/settings_screen.dart';
import 'package:getx5_nav2_my_simple_examples/nested_routes_navbar/view/speaking_page.dart';

class Routes {
  static const HOME = '/';
  static const SETTINGS = '/settings';
  static const LESSON_LIST = '/lessons';
  static const LESSON = '/:id';
  static const READING = '/reading';
  static const LISTENING = '/listening';
  static const SPEAKING = '/speaking';

  static final routes = [
    GetPage(
      name: HOME,
      page: () => const HomeScreen(),
      //participatesInRootNavigator: true,
    ),
    GetPage(
      name: SETTINGS,
      page: () => const SettingsScreen(),
      //participatesInRootNavigator: true,
    ),
    GetPage(
        name: LESSON_LIST,
        page: () => const LessonListScreen(),
        //participatesInRootNavigator: true,
        children: [
          GetPage(
              name: LESSON,
              page: () => LessonScreen(),
              preventDuplicates: false,
              participatesInRootNavigator: true,
              children: [
                GetPage(
                  name: READING,
                  page: () => const ReadingPage(),
                  //preventDuplicates: true,
                  //participatesInRootNavigator: false,
                  transition: Transition.downToUp
                ),
                GetPage(
                  name: LISTENING,
                  page: () => const ListeningPage(),
                  //preventDuplicates: true,
                  transition: Transition.fade
                  // participatesInRootNavigator: false,
                ),
                GetPage(
                  name: SPEAKING,
                  page: () => const SpeakingPage(),
                 // preventDuplicates: true,
                  transition: Transition.zoom
                  //participatesInRootNavigator: false,
                ),
              ]),
        ]),
  ];
}
