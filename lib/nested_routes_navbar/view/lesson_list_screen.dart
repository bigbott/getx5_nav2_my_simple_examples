import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/nested_routes_navbar/routes.dart';

class LessonListScreen extends StatelessWidget {
  const LessonListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> lessons = [1, 2, 3, 4, 5, 6, 7];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lessons"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Center(
          child: Column(children: [
        Flexible(
          child: ListView.builder(
            itemCount: lessons.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  'Lesson ${lessons[index]}',
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Get.toNamed('${Routes.LESSON_LIST}/${lessons[index]}');
                },
              );
            },
          ),
        ),
      ])),
    );
  }
}
