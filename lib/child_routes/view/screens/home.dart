

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/child_routes/view/routes.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [  
             ElevatedButton(
                child: const Text('Browse products'),
                onPressed: () {
                  Get.toNamed(Routes.PRODUCT_LIST);
                })
           
          ],
        ),
      ),
    );
  }

}