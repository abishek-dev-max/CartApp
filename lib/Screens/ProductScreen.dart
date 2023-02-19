import 'package:flutter/material.dart';

import '../ProductModel.dart';
// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  final ValueSetter<ProductModel> valueSetter;
  ProductScreen (this.valueSetter);
    List<ProductModel> products = [
    ProductModel("Mic", 50),
    ProductModel("LED Monitor", 100),
    ProductModel("Mouse", 5),
    ProductModel("Keyboard", 10),
    ProductModel("Speaker", 50),
    ProductModel("CD", 3),
  ];
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context,int  index) {
          return ListTile(
            title: Text(products[index].Name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
            trailing: Text('\$${products[index].Price.toString()}',style: TextStyle(color: Colors.orange,fontSize: 23,fontWeight: FontWeight.w500),),
            onTap:() {
              valueSetter(products[index]);
            },
            );
        },
        itemCount: products.length,
        separatorBuilder: (BuildContext context,int index) {
          return Divider();
        }, 
        ),
      
      );
  }
}