import 'package:flutter/material.dart';
import 'package:project/ProductModel.dart';
import 'package:project/Screens/OrderScreen.dart';
import 'package:project/Screens/ProductScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: CartApp()
    );
  }
}

class CartApp extends StatefulWidget {
  // const CartApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CartAppState createState() => _CartAppState();
}


class _CartAppState extends State<CartApp> {
  List<ProductModel> cart=[];
  int sum=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("CartApp"),
        ),
        body:ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding:EdgeInsets.symmetric(
                   horizontal: 30,
                   vertical: 10
              ),
              children: [
                ElevatedButton(
                  child: Text("Products"),
                  onPressed: (){
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductScreen((SelectedProduct) {
                                  setState(() {
                                    cart.add(SelectedProduct);//update
                                    cart.forEach((element) {
                                      sum=sum+element.Price;
                                    });
                                  });
                                }
                                ),
                                ),
                                );
                  },
                ),
                ElevatedButton(
                  child: Text("Orders"),
                  onPressed: (){
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                OrderScreen(cart,sum)));
                  },
                ),
              ],
            ), 
    );
  }
}







