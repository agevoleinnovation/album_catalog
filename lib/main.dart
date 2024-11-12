import 'package:album_catalog/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// color: Color(0xFFA40F4F), // dark shade
// color: Color(0xFFFF4CB0),  // light shade

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));
  });
}
