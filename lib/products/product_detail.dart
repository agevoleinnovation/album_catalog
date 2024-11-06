import 'package:album_catalog/products/product_model.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatCurrency(double amount) {
  NumberFormat formatter = NumberFormat.currency(
    locale: 'en_IN',
    symbol: '\u20B9 ',
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
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: Text(
          '${product.title} in ${product.category}',
          maxLines: 1,
          overflow: TextOverflow.fade,
          style: const TextStyle(fontSize: 18),
        ),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.chevron_left_rounded,
            size: 24,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: Offset(15, 19),
            ),
          ],
        ),
        padding: const EdgeInsets.only(bottom: 80.0), // Padding for the FAB
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: product.title,
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(product.imageUrl),
                        fit: BoxFit.cover,
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
                const SizedBox(height: 16.0),
                Text(
                  product.description,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _privacyPolicy(product),
        backgroundColor: const Color(0xFF3D3D3D),
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

void _privacyPolicy(Product product) {
  String message = '''
Hello, 

I am interested in your product, and I would like to know more about it. 

*Product Details:*
- *Title:* ${product.title} in ${product.category}
- *Price:* ${formatCurrency(product.price)}

Please provide me with further information at your earliest convenience.

Thank you,
''';

  String url =
      'whatsapp://send?phone=919408617250&text=${Uri.encodeComponent(message)}';
  final AndroidIntent intent = AndroidIntent(
    action: 'action_view',
    data: Uri.parse(url).toString(),
  );
  intent.launch().catchError((e) {});
}
