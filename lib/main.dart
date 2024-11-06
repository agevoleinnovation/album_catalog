import 'package:album_catalog/splash.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: ThemeData(),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
