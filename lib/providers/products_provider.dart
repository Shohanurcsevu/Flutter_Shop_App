import 'package:flutter/widgets.dart';
import 'package:shopapp/models/product.dart';

class Products with ChangeNotifier{
List<Product> _items =[];

List<Product> get items{


  return [..._items];
}


  void addProduct(){
    //_items.add(value);

    notifyListeners();



  }



}