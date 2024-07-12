import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/nested_routes_navbar/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title:  Text(
          'Home'.tr,
          style: const TextStyle(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),      
             ElevatedButton(
                child:  const Text('Browse lessons', style: TextStyle(fontSize: 30),),
                onPressed: () {
                  Get.toNamed(Routes.LESSON_LIST);
                })    
          ],
        ),
      ),
    );
  }
}
