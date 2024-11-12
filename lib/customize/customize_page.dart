import 'package:album_catalog/products/product_list.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';

class CustomisedAlbumPage extends StatelessWidget {
  const CustomisedAlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Send enquiry for Customised Albums, Photobooks, Calendars and many more!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3D3D3D),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: sendCustomizeEnquiry,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFA40F4F),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                label: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                  child: Text(
                    "Send Enquiry",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                icon: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                  child: Icon(
                    Icons.send,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'We offer personalized options for albums, photobooks, and calendars to capture your memories in the most beautiful way.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF3D3D3D),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void sendCustomizeEnquiry() {
  String message = '''
Hello, 

I am interested in your products and would like to customize some items. 
Please provide me with further information at your earliest convenience.
''';

  String url =
      'whatsapp://send?phone=91$clientNumber&text=${Uri.encodeComponent(message)}';
  final AndroidIntent intent = AndroidIntent(
    action: 'action_view',
    data: Uri.parse(url).toString(),
  );
  intent.launch().catchError((e) {});
}
