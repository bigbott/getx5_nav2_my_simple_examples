// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/nested_routes_navbar/routes.dart';

class LessonScreen extends StatelessWidget {
  String? id;

  LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    id = Get.parameters['id'];
    // return GetRouterOutlet.builder(
    //     route: '${Routes.LESSON_LIST}/$id',
    //     builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Lesson $id'),
              centerTitle: true,
              automaticallyImplyLeading: false,
              leading: Builder(
                builder: (context) {
                  if (Get.previousRoute.isEmpty) {
                    return IconButton(
                      icon: const Icon(Icons.home),
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
                      },
                    );
                  } else {
                    return BackButton(onPressed: () => Get.back());
                  }
                },
              ),
            ),
            body: GetRouterOutlet(
              //initialRoute:'${Routes.HOME}${Routes.LESSON_LIST}/$id${Routes.READING}',
              //anchorRoute: '${Routes.HOME}${Routes.LESSON_LIST}/$id',
              initialRoute: '${Routes.LESSON_LIST}/$id${Routes.READING}',
              anchorRoute: '${Routes.LESSON_LIST}/$id',
              //anchorRoute: Routes.HOME,
              //anchorRoute: '${Routes.HOME}${Routes.LESSON_LIST}',
            ),
            bottomNavigationBar: IndexedRouteBuilder(
                routes: [
                  '${Routes.LESSON_LIST}/$id${Routes.READING}',
                  '${Routes.LESSON_LIST}/$id${Routes.LISTENING}',
                  '${Routes.LESSON_LIST}/$id${Routes.SPEAKING}'
                ],
                builder: (context, routes, index) {
                  final delegate = context.delegate;
                  return BottomNavigationBar(
                    currentIndex: index,
                    onTap: (value) => delegate.toNamed(routes[value]),
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Reading',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.account_box_rounded),
                        label: 'Listening',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.account_box_rounded),
                        label: 'Speaking',
                      ),
                    ],
                  );
                }),
          );
       // });
  }
}
