import 'package:album_catalog/products/product_catalog.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ProductCatalogPage()),
      );
    });

    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to the Product Catalog',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
