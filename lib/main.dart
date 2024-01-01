import 'package:ecommerce_avatech/pages/CartPage.dart';
import 'package:ecommerce_avatech/pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => const HomePage(),
        "cartPage": (context) => const CartPage(),
      },
    );
  }
}
