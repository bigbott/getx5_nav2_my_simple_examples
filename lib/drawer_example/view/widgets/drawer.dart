import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/drawer_example/routes.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(

            child: Text(
              'Menu'.tr,

            ),
          ),
          ListTile(
            title:  Text('Theme settings'.tr),
            onTap: () {
              Get.backLegacy();
              Get.toNamed(Routes.THEME_SETTINGS_SCREEN);
            },
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            title:  const Text('Language settings'),
            onTap: () {
              //Get.backLegacy();
              Get.back();
              Get.toNamed(Routes.LANG_SETTINGS_SCREEN);
            },
            trailing: const Icon(Icons.chevron_right),
          )
        ],
      ),
    );
  }
}
