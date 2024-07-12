import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ThemeSettingsScreen extends StatelessWidget {
  const ThemeSettingsScreen({super.key});



  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: BackButton(
          onPressed: () {
            Get.back();
          },
        ),
        title:  Text(
          'Theme settings'.tr,
          style: const TextStyle(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Card(
          elevation: 3,
          shadowColor: Theme.of(context).colorScheme.onPrimary,
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                 
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //
}
