import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/drawer_example/routes.dart';


void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

      return GetMaterialApp(

        initialRoute: Routes.HOME_SCREEN,
        getPages: Routes.routes,          
        debugShowCheckedModeBanner: false,
      );
   // });
  }
}
