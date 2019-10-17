import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  
  static const routeName='/product-detail-screen';
  
  
  @override
  Widget build(BuildContext context) {
    final prouctId=ModalRoute.of(context).settings.arguments as String;
    final loadedproduct=Provider.of<Products>(context).findById(prouctId);
    
   
    
    return Scaffold( 
      appBar: AppBar(

        title: Text(loadedproduct.title),
      ),
      
    );
  }
}