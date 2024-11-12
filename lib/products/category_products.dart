import 'package:album_catalog/products/product_detail.dart';
import 'package:album_catalog/products/product_list.dart';
import 'package:album_catalog/products/product_model.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CategoryProductPage extends StatelessWidget {
  final String category;

  CategoryProductPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = categorizedProducts[category]!['products'];

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: const Color(0xFFA40F4F),
        backgroundColor: const Color(0xFFA40F4F),
        title: Text(
          '$category Products',
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
        child: Column(
          children: [
            const SizedBox(height: 8),
            Hero(
              tag: category,
              child: Container(
                height: 190,
                // padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      categorizedProducts[category]!['titleImage'],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            if (categorizedProducts[category]!['products'].length == 0) ...[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Explore $category products starting at just ₹${categorizedProducts[category]!['price']}.',
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3D3D3D),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton.icon(
                      onPressed: () => sendEnquiryofCategory(category),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFA40F4F),
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 40),
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      label: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                        child: Text(
                          "Send Enquiry",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      icon: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                        child: Icon(
                          Icons.send,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),
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
            ],
            categorizedProducts[category]!['products'].length == 0
                ? Container()
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 0,
                    ),
                    itemCount:
                        categorizedProducts[category]!['products'].length,
                    itemBuilder: (context, index) {
                      return buildProductCard(context, products[index]);
                    },
                  ),
          ],
        ),
      ),
    );
  }

  Widget buildProductCard(BuildContext context, Product product) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ProductDetailPage(product: product)),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: product.title,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(product.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      formatCurrency((product.price)),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String formatCurrency(double amount) {
    final formatter = NumberFormat.currency(
      locale: 'en_IN',
      symbol: '\u20B9 ',
      decimalDigits: 2,
    );
    String formattedAmount = formatter.format(amount);
    if (formattedAmount.contains('.00')) {
      formattedAmount =
          formattedAmount.substring(0, formattedAmount.length - 3);
    }
    return formattedAmount;
  }
}

void sendEnquiryofCategory(String category) {
  String message = '''
Hello,

I am interested in purchasing products from your collection and would like to inquire about the available options.

*Product Interest:*
- I am particularly interested in *$category* products and would appreciate more details, including pricing, specifications, and any customization options.

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
