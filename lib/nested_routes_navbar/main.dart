import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/nested_routes_navbar/routes.dart';


void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

      return GetMaterialApp(
        initialRoute: Routes.HOME,
        getPages: Routes.routes,          
        debugShowCheckedModeBanner: false,
      );
   // });
  }
}
