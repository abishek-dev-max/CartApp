import 'package:flutter/material.dart';
import 'package:project/Screens/ProductScreen.dart';
class OrderScreen extends StatelessWidget {
  final cart;
  final Sum;
  OrderScreen(this.cart,this.Sum);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products')
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context,int  index) {
          return ListTile(
            title: Text(cart[index].Name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
            trailing: Text('\$${cart[index].Price.toString()}',style: TextStyle(color: Colors.orange,fontSize: 23,fontWeight: FontWeight.w500),),
            subtitle:Text("Total = $Sum"),
            onTap:() {
              
            },
            );
        },
        itemCount: cart.length,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context,int index) {
          return Divider();
          }, 
        ),
      );   
  }
}
