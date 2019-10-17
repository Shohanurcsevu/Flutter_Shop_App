import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';
import 'package:shopapp/widgets/product_grid.dart';



class ProductOverViewScreen extends StatelessWidget {
  
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Shop App"),
      ),
      body: ProductGrid(

        




      ),
      
    );
  }
}

