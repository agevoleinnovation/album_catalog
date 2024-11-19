import 'package:album_catalog/homepage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigate to HomePage after a delay
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                  initialIndex: 0,
                )),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            SizedBox(
              height: 70,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo-h.png'))),
            ),
            SizedBox(
              height: 10,
            ),
            Spacer(),
            Text(
              'Relive Your Special Moments with MYALBUMRY',
              style: TextStyle(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                color: Color(0xffa40f4f),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
