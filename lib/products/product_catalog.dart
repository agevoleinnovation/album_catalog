import 'package:album_catalog/products/product_detail.dart';
import 'package:album_catalog/products/product_list.dart';
import 'package:album_catalog/products/product_model.dart';
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

  final List<String> categories = [
    'Photobooks',
    'Framed Prints',
    'Calendars',
    // 'Kids',
    // 'Decor',
    // 'Gifts',
    // 'Card Stock Prints',
    // 'Photo Prints',
    // 'Bags and Pouches',
    // 'Stationery',
    // 'Accessories',
    // 'Chocolates',
  ];

  final Map<String, Map<String, dynamic>> categorizedProducts = {
    'Photobooks': {
      'products': products.where((p) => p.category == 'Photobooks').toList(),
      'titleImage': 'assets/images/header_image/Photobook.webp',
      'subtitle': 'Create memories with custom photobooks',
    },
    'Framed Prints': {
      'products': products.where((p) => p.category == 'Framed Prints').toList(),
      'titleImage': 'assets/images/header_image/Framed Prints.webp',
      'subtitle': 'Elegant framed prints for your home',
    },
    'Calendars': {
      'products': products.where((p) => p.category == 'Calendars').toList(),
      'titleImage': 'assets/images/header_image/Calendars.webp',
      'subtitle': 'Plan your year with beautiful calendars',
    },
    // 'Kids': {
    //   'products': products.where((p) => p.category == 'Kids').toList(),
    //   'titleImage': 'assets/images/header_image/Kids.webp',
    //   'subtitle': 'Fun and colorful prints for kids',
    // },
    // 'Decor': {
    //   'products': products.where((p) => p.category == 'Decor').toList(),
    //   'titleImage': 'assets/images/header_image/Decor.webp',
    //   'subtitle': 'Stylish decor items for every space',
    // },
    // 'Gifts': {
    //   'products': products.where((p) => p.category == 'Gifts').toList(),
    //   'titleImage': 'assets/images/header_image/Gifts.webp',
    //   'subtitle': 'Thoughtful gifts for every occasion',
    // },
    // 'Card Stock Prints': {
    //   'products':
    //       products.where((p) => p.category == 'Card Stock Prints').toList(),
    //   'titleImage': 'assets/images/header_image/Card Stock Prints.webp',
    //   'subtitle': 'High-quality card stock prints',
    // },
    // 'Photo Prints': {
    //   'products': products.where((p) => p.category == 'Photo Prints').toList(),
    //   'titleImage': 'assets/images/header_image/Photo Prints.webp',
    //   'subtitle': 'Print your photos with premium quality',
    // },
    // 'Bags and Pouches': {
    //   'products':
    //       products.where((p) => p.category == 'Bags and Pouches').toList(),
    //   'titleImage': 'assets/images/header_image/Bags and Pouches.webp',
    //   'subtitle': 'Stylish bags and pouches for every need',
    // },
    // 'Stationery': {
    //   'products': products.where((p) => p.category == 'Stationery').toList(),
    //   'titleImage': 'assets/images/header_image/Stationery.webp',
    //   'subtitle': 'Quality stationery for every occasion',
    // },
    // 'Accessories': {
    //   'products': products.where((p) => p.category == 'Accessories').toList(),
    //   'titleImage': 'assets/images/header_image/Accessories.webp',
    //   'subtitle': 'Accessories to complement your style',
    // },
    // 'Chocolates': {
    //   'products': products.where((p) => p.category == 'Chocolates').toList(),
    //   'titleImage': 'assets/images/header_image/Chocolates.webp',
    //   'subtitle': 'Indulge in delicious chocolates',
    // },
  };

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    double offset = 0.0;
    for (var category in categorizedProducts.keys) {
      double sectionHeight =
          ((categorizedProducts[category]!['products'].length / 2).ceil() *
                      230 +
                  200)
              .toDouble();
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
      appBar: AppBar(
        elevation: 5,
        centerTitle: true,
        backgroundColor: const Color(0xFFE8D3B7),
        title: const Text(
          'PixVault',
          style: TextStyle(
            fontSize: 28,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Color(0xFF3D3D3D),
          ),
        ),
      ),
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
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 1,
                    ),
                    itemCount:
                        categorizedProducts[category]!['products'].length,
                    itemBuilder: (context, index) {
                      return buildProductCard(
                          categorizedProducts[category]!['products'][index]);
                    },
                  ),
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
                      ? Colors.orange
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
    for (var cat in categorizedProducts.keys) {
      if (cat == category) break;
      offset +=
          (categorizedProducts[cat]!['products'].length / 2).ceil() * 200 + 290;
    }

    scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );

    int categoryIndex = categories.indexOf(category);
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
        Container(
          height: 190,
          // padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(
                categorizedProducts[category]!['titleImage'],
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget buildProductCard(Product product) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProductDetailPage(product: product)),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 14),
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product
                  .title, // Use a unique tag, e.g., product.title or product.id
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
    );
  }
}
