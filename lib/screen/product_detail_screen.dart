import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  
  static const routeName='/product-detail-screen';
  
  
  @override
  Widget build(BuildContext context) {
    final prouctId=ModalRoute.of(context).settings.arguments as String;
    
    return Scaffold( 
      appBar: AppBar(

        title: Text('Myshop'),
      ),
      
    );
  }
}