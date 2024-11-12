import 'package:album_catalog/products/product_model.dart';

// String clientNumber = '9512588525';
String clientNumber = '9408617250';

final List<String> categories = [
  'Photobooks',
  'Framed Prints',
  'Calendars',
  'Home Decor (Wall Prints)',
  'Kids',
  'Cushion',
  'Mugs',
];

final Map<String, Map<String, dynamic>> categorizedProducts = {
  'Photobooks': {
    'products': products.where((p) => p.category == 'Photobooks').toList(),
    'titleImage': 'assets/images/header_image/photobooks.jpg',
    'subtitle': 'Create memories with custom photobooks',
  },
  'Framed Prints': {
    'products': products.where((p) => p.category == 'Framed Prints').toList(),
    'titleImage': 'assets/images/header_image/framed-prints.jpg',
    'subtitle': 'Add elegance to your space with personalized framed prints',
  },
  'Calendars': {
    'products': products.where((p) => p.category == 'Calendars').toList(),
    'titleImage': 'assets/images/header_image/calenders.jpg',
    'subtitle': 'Personalized calendars to cherish every day of the year',
  },
  'Home Decor (Wall Prints)': {
    'products': products
        .where((p) => p.category == 'Home Decor (Wall Prints)')
        .toList(),
    'titleImage': 'assets/images/header_image/home-decor.jpg',
    'subtitle': 'Transform your home with unique decor pieces',
    'price': 3000,
  },
  'Kids': {
    'products': products.where((p) => p.category == 'Kids').toList(),
    'titleImage': 'assets/images/header_image/kids.jpg',
    'subtitle': 'Create fun and lasting memories for the little ones',
    'price': 3000,
  },
  'Cushion': {
    'products': products.where((p) => p.category == 'Cushion').toList(),
    'titleImage': 'assets/images/header_image/cushion.jpg',
    'subtitle': 'Comfy, stylish cushions to add warmth to any room',
    'price': 600,
  },
  'Mugs': {
    'products': products.where((p) => p.category == 'Mugs').toList(),
    'titleImage': 'assets/images/header_image/mugs.jpg',
    'subtitle': 'Start your day with a mug customized just for you',
    'price': 350,
  },
};

List<Product> products = [
  //Photobooks

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  // Product 1
  Product(
      title: "LCP-08-001",
      description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
      price: 800,
      category: "Photobooks",
      imageUrl:
          "https://firebasestorage.googleapis.com/v0/b/agevole-client.appspot.com/o/MyAlbumry%2FLCP-08-001-800.png?alt=media&token=7f63b3b3-d864-4f07-95ac-25a12a3b2f1a"),

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  // Product 2
  Product(
      title: "LCP-09-003",
      description: '''
-  Leather Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
      price: 900,
      category: "Photobooks",
      imageUrl:
          "https://firebasestorage.googleapis.com/v0/b/agevole-client.appspot.com/o/MyAlbumry%2FLCP-09-003-900.png?alt=media&token=1c006aa8-3a36-45b1-9f86-08ddafc51351"),

// ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  // Framed Prints
  Product(
    title: "Hard Board Print",
    description: '''
- Sturdy Hard Board Frame
- High-Quality Glossy Finish
- UV Resistant Coating
- Durable Protective Layer

Available Sizes:- Wide range of custom sizes available to suit your needs
''',
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/agevole-client.appspot.com/o/MyAlbumry%2Fframed-hard_board_prints.jpg?alt=media&token=13bb8a44-6c09-48d9-9d7c-62121d2befe4",
    price: 1200,
    category: 'Framed Prints',
  ),

  Product(
    title: "Acrylic Photo Prints",
    description: '''
- Premium Acrylic Surface
- Enhanced Color Depth
- Scratch and UV Resistant
- Frameless Design for Modern Look

Available Sizes:- All standard and custom sizes available upon request
''',
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/agevole-client.appspot.com/o/MyAlbumry%2Fframed-acrylic_prints.jpg?alt=media&token=94e81136-f558-46fe-891b-e8a1fff9a168",
    price: 900,
    category: 'Framed Prints',
  ),

  // Calendars
  Product(
    title: "Framed Calendar",
    description: '''
- High-Quality Framed Print
- Sleek and Modern Design
- Easy to Hang and Replace
- UV Resistant Finish to Prevent Fading

Ideal for adding a stylish touch to any room.
Available Sizes:8x12 inches, and custom sizes available
  ''',
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/agevole-client.appspot.com/o/MyAlbumry%2Fcalenders-framed.jpg?alt=media&token=76ef8126-79f5-4af9-af1d-83005fefe27d",
    price: 350,
    category: 'Calendars',
  ),

  Product(
    title: "Wooden Calendar",
    description: '''
- Premium Wooden Stand
- Elegant Minimalist Design
- Eco-Friendly Reusable Base
- Durable and Long-Lasting

Perfect for office or home decor.
Available Sizes:Compact and Standard
  ''',
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/agevole-client.appspot.com/o/MyAlbumry%2Fcalenders-wooden.jpg?alt=media&token=933e9327-1851-4703-920d-68c8153b9718",
    price: 500,
    category: 'Calendars',
  ),
];
