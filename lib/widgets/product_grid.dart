
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/products_provider.dart';

import 'package:shopapp/widgets/product_item.dart';





class ProductGrid extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final productData=Provider.of<Products>(context);
final products=productData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx,i)=>ProductItem(
        products[i].id,
        products[i].title,
        products[i].imgUrl


      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10


      ),

    );
  }
}