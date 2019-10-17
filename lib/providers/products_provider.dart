import 'package:flutter/widgets.dart';
import 'package:shopapp/models/product.dart';

class Products with ChangeNotifier{
List<Product> _items =[
   

    Product(
      id: 'p1',
      title: 'Briyani',
      description: 'TastyBriyani',
      price: 56,
      imgUrl: 'https://d22ir9aoo7cbf6.cloudfront.net/wp-content/uploads/sites/2/2016/03/Bismillah-Biryani-Restaurant.jpg'

    ),
    Product(
      id: 'p2',
      title: 'Kabab',
      description: 'Tasty Kabab',
      price: 56,
      imgUrl: 'https://upload.wikimedia.org/wikipedia/commons/5/5b/Lula_kebab_2.jpg'

    ),
    Product(
      id: 'p3',
      title: 'Vegetables',
      description: 'Tasty Vegetables',
      price: 56,
      imgUrl: 'https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'

    ),
    Product(
      id: 'p4',
      title: 'Chinese',
      description: 'Tasty Chinese',
      price: 56,
      imgUrl: 'https://assets3.thrillist.com/v1/image/1864928/size/tl-horizontal_main_2x.jpg'

    ),


  
];

List<Product> get items{


  return [..._items];
}

 Product findById(String id)
 {
   return _items.firstWhere((prod)=> prod.id ==id);
 }


  void addProduct(){
    //_items.add(value);

    notifyListeners();



  }



}