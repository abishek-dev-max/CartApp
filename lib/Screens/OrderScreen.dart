// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
class OrderScreen extends StatelessWidget {
  final cart;
  final Sum;
  OrderScreen(this.cart,this.Sum);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [ListView.separated(
          itemBuilder: (BuildContext context,int  index) {
          return Material(child:ListTile(
            title: Text(cart[index].Name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
            trailing: Text('\$${cart[index].Price.toString()}',style: TextStyle(color: Colors.orange,fontSize: 23,fontWeight: FontWeight.w500),),
            // subtitle:Text("Total = $Sum"),
            onTap:() {
              
            },
            ),
            );
        },
        itemCount: cart.length,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context,int index) {
          return Divider();
          }, 
        ),
        Divider(),
      Text("Total = \$$Sum",)],
    ),
    );   
  }
}
