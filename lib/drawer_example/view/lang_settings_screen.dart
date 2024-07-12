import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LangSettingsScreen extends StatelessWidget {
  const LangSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${'Language'.tr}:',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(
              width: 10,
            ),

          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        
      ),
    );
  }
}
