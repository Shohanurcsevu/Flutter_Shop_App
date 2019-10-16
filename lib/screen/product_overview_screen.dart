import 'package:flutter/material.dart';
import 'package:shopapp/models/product.dart';
import 'package:shopapp/widgets/product_item.dart';


class ProductOverViewScreen extends StatelessWidget {
  
  final List<Product> loadedproduct=[

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

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Shop App"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedproduct.length,
        itemBuilder: (ctx,i)=>ProductItem(
          loadedproduct[i].id,
          loadedproduct[i].title,
          loadedproduct[i].imgUrl


        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10


        ),

      ),
      
    );
  }
}