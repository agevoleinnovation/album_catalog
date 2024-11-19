import 'package:album_catalog/products/category_products.dart';
import 'package:album_catalog/products/product_list.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductCatalogPage extends StatefulWidget {
  @override
  _ProductCatalogPageState createState() => _ProductCatalogPageState();
}

class _ProductCatalogPageState extends State<ProductCatalogPage>
    with SingleTickerProviderStateMixin {
  String selectedCategory = 'Photobooks';
  final ScrollController scrollController = ScrollController();
  final ScrollController categoryScrollController = ScrollController();
  String formatCurrency(double amount) {
    NumberFormat formatter = NumberFormat.currency(
      locale: 'en_IN',
      symbol: '\u20B9 ',
      decimalDigits: 2, // Specify decimal digits initially
    );

    // Format the amount
    String formattedAmount = formatter.format(amount);

    // Remove trailing zeros and the decimal point if the decimal part is .00
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

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    double offset = 0.0;
    for (var category in categorizedProducts.keys) {
      double sectionHeight = (260).toDouble();
      if (scrollController.offset < offset + sectionHeight) {
        if (selectedCategory != category) {
          setState(() {
            selectedCategory = category;
          });
        }
        break;
      }
      offset += sectionHeight;
    }
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    categoryScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 7),
          buildCategoryList(),
          const Divider(),
          Expanded(
            child: ListView(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              children: [
                for (var category in categorizedProducts.keys) ...[
                  buildCategoryHeader(category),
                  // GridView.builder(
                  //   shrinkWrap: true,
                  //   physics: const NeverScrollableScrollPhysics(),
                  //   gridDelegate:
                  //       const SliverGridDelegateWithFixedCrossAxisCount(
                  //     crossAxisCount: 2,
                  //     mainAxisSpacing: 2,
                  //     crossAxisSpacing: 1,
                  //   ),
                  //   itemCount:
                  //       categorizedProducts[category]!['products'].length,
                  //   itemBuilder: (context, index) {
                  //     return buildProductCard(
                  //         categorizedProducts[category]!['products'][index]);
                  //   },
                  // ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryList() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        controller: categoryScrollController,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => scrollToCategory(categories[index]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: categories[index] == selectedCategory
                      ? const Color.fromARGB(255, 232, 113, 165)
                      : Colors.grey[200],
                  borderRadius: BorderRadius.circular(7),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: categories[index] == selectedCategory
                        ? Colors.white
                        : Colors.black,
                    fontWeight: categories[index] == selectedCategory
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void scrollToCategory(String category) {
    setState(() {
      selectedCategory = category;
    });

    double offset = 0.0;
    int categoryIndex = categories.indexOf(category);

    for (var cat in categorizedProducts.keys) {
      if (cat == category) break;
      offset += (categoryIndex * 10) + 280;
    }

    scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );

    double scrollPosition = (categoryIndex * 100.0)
        .clamp(0.0, categoryScrollController.position.maxScrollExtent);
    categoryScrollController.animateTo(
      scrollPosition,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Widget buildCategoryHeader(String category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8.0),
          child: Text(
            category,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            categorizedProducts[category]!['subtitle'],
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryProductPage(category: category),
              ),
            );
          },
          child: Hero(
            tag: category,
            child: Container(
              height: 190,
              // padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                    categorizedProducts[category]!['titleImage'],
                  ),
                  fit: category == 'Customised Mobile Covers'
                      ? BoxFit.contain
                      : BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
