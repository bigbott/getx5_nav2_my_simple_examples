import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_nav2_my_simple_examples/child_routes/model/product.dart';
import 'package:getx5_nav2_my_simple_examples/child_routes/service/mock_product_service.dart';
import 'package:getx5_nav2_my_simple_examples/child_routes/view/routes.dart';


class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = MockProductService().getAll();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product list"),
        centerTitle: true,
         automaticallyImplyLeading: false,
        leading: IconButton(
          icon:  const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Center(
          child: Column(
            children: [
              Flexible(
                child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                title: Text(
                  products[index].title,
                  textAlign: TextAlign.center,
                ),
                subtitle: Text(
                  'Price: \$${products[index].price}',
                  textAlign: TextAlign.center,
                ),
                onTap: () {
                  Get.toNamed('${Routes.PRODUCT_LIST}/${products[index].id}');
                },
                          );
                    },
                  ),
              ),
            ]
          )),
    );
  }
}
