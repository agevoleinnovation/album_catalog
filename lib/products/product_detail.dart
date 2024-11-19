import 'package:album_catalog/products/product_list.dart';
import 'package:album_catalog/products/product_model.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:photo_view/photo_view.dart'; // Import photo_view package
import 'package:photo_view/photo_view_gallery.dart'; // Import for gallery view

String formatCurrency(double amount) {
  NumberFormat formatter = NumberFormat.currency(
    locale: 'en_IN',
    symbol: 'From \u20B9 ',
    decimalDigits: 2,
  );

  String formattedAmount = formatter.format(amount);

  if (formattedAmount.contains('.')) {
    if (formattedAmount.endsWith('.00')) {
      formattedAmount =
          formattedAmount.substring(0, formattedAmount.length - 3);
    } else if (formattedAmount.endsWith('0')) {
      formattedAmount =
          formattedAmount.substring(0, formattedAmount.length - 1);
    }
  }

  return formattedAmount;
}

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Color(0xFFA40F4F),
        backgroundColor: Color(0xFFA40F4F),
        title: Text(
          product.title,
          maxLines: 1,
          overflow: TextOverflow.fade,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.chevron_left_rounded,
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 80.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImagePreviewPage(
                        imageUrl: product.imageUrl,
                        title: product.title,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: product.title,
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                          product.imageUrl,
                        ),
                        fit: product.category == 'Customised Mobile Covers'
                            ? BoxFit.contain
                            : BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Divider(),
              ),
              const SizedBox(height: 5),
              Text(
                product.title,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                formatCurrency(product.price),
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF3D3D3D),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Specifications:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                (product.description).split('Available Sizes:').first.trim(),
                style: const TextStyle(fontSize: 16.0),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Available Sizes:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                (product.description).split('Available Sizes:').last,
                style: const TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => sendEnquiry(product),
        backgroundColor: const Color(0xFFA40F4F),
        label: const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          child: Text(
            "Send Enquiry",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        icon: const Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          child: Icon(
            Icons.send,
            size: 18,
            color: Colors.white,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        elevation: 8, // Shadow for the floating button
      ),
    );
  }
}

// Image Preview Page with zoom-in functionality
class ImagePreviewPage extends StatelessWidget {
  final String imageUrl;
  final String title;

  const ImagePreviewPage(
      {super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   surfaceTintColor: Color(0xFFA40F4F),
      //   backgroundColor: Color(0xFFA40F4F),
      //   title: Text(
      //     title,
      //     maxLines: 1,
      //     overflow: TextOverflow.fade,
      //     style: const TextStyle(
      //       color: Colors.white,
      //       fontSize: 18,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   automaticallyImplyLeading: false,
      //   leading: GestureDetector(
      //     onTap: () => Navigator.pop(context),
      //     child: const Icon(
      //       Icons.chevron_left_rounded,
      //       size: 24,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: title,
              child: PhotoViewGallery.builder(
                itemCount: 1,
                builder: (context, index) {
                  return PhotoViewGalleryPageOptions(
                    imageProvider: NetworkImage(imageUrl),
                    minScale: PhotoViewComputedScale.contained,
                    maxScale: PhotoViewComputedScale.covered * 2,
                  );
                },
                scrollPhysics: BouncingScrollPhysics(),
                backgroundDecoration: BoxDecoration(
                  color: Colors.grey,
                ),
                pageController: PageController(),
              ),
            ),
          ),
          Positioned(
              child: Container(
            decoration: BoxDecoration(color: Color(0xFFA40F4F)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 40, bottom: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.chevron_left_rounded,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

void sendEnquiry(Product product) {
  String message = '''
Hello, 

I am interested in your product, and I would like to know more about it. 

*Product Details:*
- *Title:* ${product.title} in ${product.category}
- *Price:* ${formatCurrency(product.price)}

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
