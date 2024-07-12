import 'package:flutter/material.dart';

class SpeakingPage extends StatelessWidget {
  const SpeakingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),          
            Text('Speaking', style: TextStyle(fontSize: 50),)
          ],
        ),
      );    
  }
}
