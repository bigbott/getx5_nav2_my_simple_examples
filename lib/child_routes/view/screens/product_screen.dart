// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/child_routes/model/product.dart';
import 'package:getx5_nav2_my_simple_examples/child_routes/service/mock_product_service.dart';
import 'package:getx5_nav2_my_simple_examples/child_routes/view/routes.dart';

class ProductScreen extends StatelessWidget {
  String? id;

  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    id ??= Get.parameters['id'];
    Product product = MockProductService().getById(id!)!;
    return Scaffold(
      appBar: AppBar(
        title: Text('Product ${product.id}'),
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
              return BackButton(
                  onPressed: () => Get.back());
            }
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              product.title,
              style: TextStyle(color: Colors.deepPurple.shade900, fontSize: 25),
            ),
            const SizedBox(height: 20),
            Text(
              product.description,
              style: TextStyle(
                  color: Get.theme.colorScheme.tertiary, fontSize: 14),
            ),
            const SizedBox(height: 20),
            Text(
              '\$${product.price.toString()}',
              style: TextStyle(color: Colors.amber.shade900, fontSize: 28),
            ),
            ElevatedButton(
                child: const Text('Similar product'),
                onPressed: () {
                  var product = MockProductService().getSimilar(id!)!;
                  Get.toNamed('${Routes.PRODUCT_LIST}/${product.id}');
                }),
          ],
        ),
      ),
    );
  }
}
