import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/anonymous_routes/first_screen.dart';
import 'package:getx5_nav2_my_simple_examples/anonymous_routes/second_screen.dart';

class Routes {
  static const FIRST_SCREEN = '/';
  static const SECOND_SCREEN = '/SecondScreen';

  static final routes = [
    GetPage(
      name: FIRST_SCREEN,
      page: () => const FirstScreen(),
      participatesInRootNavigator: true,
    ),
    GetPage(
      name: SECOND_SCREEN,
      page: () => const SecondScreen(),
      participatesInRootNavigator: true,
    ),
  ];
}
