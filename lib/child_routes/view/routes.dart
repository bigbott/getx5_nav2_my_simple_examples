// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/child_routes/view/screens/home.dart';
import 'package:getx5_nav2_my_simple_examples/child_routes/view/screens/product_list.dart';
import 'package:getx5_nav2_my_simple_examples/child_routes/view/screens/product_screen.dart';

class Routes {
  static const HOME = '/';
  static const PRODUCT_LIST = '/products';

  static final routes = [
    GetPage(
      name: HOME,
      page: () => const Home(),
      transition: Transition.circularReveal,
    ),
    GetPage(
        name: PRODUCT_LIST,
        page: () => const ProductList(),
        transition: Transition.circularReveal,
        children: [
          GetPage(
            name: '/:id',
            page: () => ProductScreen(),
            transition: Transition.circularReveal,
            preventDuplicates: false,
          ),
        ]),
  ];
}
