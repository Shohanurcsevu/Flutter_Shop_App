import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/screen/product_detail_screen.dart';
import './providers/products_provider.dart';
import 'package:shopapp/screen/product_overview_screen.dart';

void main()=>runApp(ShopApp());

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      builder: (ctx)=> Products(),
          child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.greenAccent
        ),

        home: ProductOverViewScreen(),
        routes: {

          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          



        }, 
        
      ),
    );
  }
}