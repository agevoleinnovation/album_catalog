import 'package:album_catalog/products/product_model.dart';

String clientNumber = '9512588525';
// String clientNumber = '9408617250';

final List<String> categories = [
  'Photobooks',
  'Framed Prints',
  'Calendars',
  'Home Decor (Wall Prints)',
  'Kids',
  'Cushion',
  'Mugs',
  'Customised Mobile Covers',
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
  'Customised Mobile Covers': {
    'products': products
        .where((p) => p.category == 'Customised Mobile Covers')
        .toList(),
    'titleImage': 'assets/images/header_image/mobile_cover.jpg',
    'subtitle':
        'Protect your phone in style with a cover uniquely crafted for you.',
    'price': 350,
  },
};

List<Product> products = [
//Photobooks - Enlight Cover

  // Product 1
  Product(
    title: "LCP-08-001",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1000,
    category: "Photobooks",
    imageUrl: "assets/images/products/LCP-08-001-800.png",
  ),

  // Product 2
  Product(
    title: "LCP-09-003",
    description: '''
-  Leather Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1100,
    category: "Photobooks",
    imageUrl: "assets/images/products/LCP-09-003-900.png",
  ),

  // Product 3
  Product(
    title: "LCP-09-004",
    price: 1100,
    description: '''
-  Leather Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LCP-09-004-900.png",
    category: 'Photobooks',
  ),

  // Product 4
  Product(
    title: "LCE-10-001",
    description: '''
-  Leather Cover
-  Engraving on Cover Pad
-  Blue Engraving Text
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LCP-10-001-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 5
  Product(
    title: "LCE-10-002",
    description: '''
-  Leather Cover
-  Engraving on Cover Pad
-  Red Highlight Engraving
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LCP-10-002-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 6
  Product(
    title: "LCE-10-003",
    description: '''
-  Leather Cover
-  Engraving on Cover Pad
-  Green Highlight Engraving
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LCP-10-003-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 7
  Product(
    title: "LCE-10-004",
    description: '''
-  Leather Cover
-  Graphic on Cover Pad
-  Engraving Text
-  Same Design Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LCP-10-004-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 8
  // Calendars
  Product(
    title: "GLC-10-001",
    description: '''
-  Leather Cover
-  Engaving  on Cover Pad
-  Graphic on Cover
-  Window Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/GLC-10-001-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 9
  Product(
    title: "GLC-10-002",
    description: '''
-  Leather Cover
-  Engaving  on Cover Pad
-  Graphic on Cover
-  Window Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/GLC-10-002-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 10
  Product(
    title: "GLC-10-003",
    description: '''
-  Leather Cover
-  Engaving  on Cover Pad
-  Graphic on Cover
-  Window Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/GLC-10-003-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 11
  Product(
    title: "GLC-10-004",
    description: '''
-  Leather Cover
-  Engaving  on Cover Pad
-  Graphic on Cover
-  Window Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/GLC-10-004-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 12
  Product(
    title: "GLC-10-006",
    description: '''
-  Leather Cover
-  Engaving  on Cover Pad
-  Graphic on Cover
-  Window Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/GLC-10-006-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 13
  Product(
    title: "WBC-10-001",
    description: '''
-  Briefcase Combo
-  Photo Window On Briefcase
-  Window on Cover Pad
-  Matching Briefcase

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/WBC-10-001-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 14
  Product(
    title: "WBC-10-002",
    description: '''
-  Briefcase Combo
-  Photo Window On Briefcase
-  Window on Cover Pad
-  Matching Briefcase

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/WBC-10-002-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 15
  Product(
    title: "WBC-10-003",
    description: '''
-  Briefcase Combo
-  Photo Window On Briefcase
-  Window on Cover Pad
-  Matching Briefcase

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/WBC-10-003-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 16
  Product(
    title: "WBC-10-004",
    description: '''
-  Briefcase Combo
-  Photo Window On Briefcase
-  Window on Cover Pad
-  Matching Briefcase

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/WBC-10-005-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 17
  Product(
    title: "WBC-10-005",
    description: '''
-  Briefcase Combo
-  Photo Window On Briefcase
-  Window on Cover Pad
-  Matching Briefcase

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/GLC-10-005-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 18
  Product(
    title: "WBC-10-006",
    description: '''
-  Briefcase Combo
-  Photo Window On Briefcase
-  Window on Cover Pad
-  Matching Briefcase

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/WBC-10-006-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 19
  Product(
    title: "WBC-10-007",
    description: '''
-  Briefcase Combo
-  Photo Window On Briefcase
-  Window on Cover Pad
-  Matching Briefcase

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/WBC-10-007-1000.png",
    price: 1200,
    category: 'Photobooks',
  ),

  // Product 20
  Product(
    title: "ELA-11-001",
    description: '''
-  Leather Cover
-  Green Highlight Engraving
-  Engraving on Cover Pad
-  Acrylic Slide On Cover
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/ELA-11-001-1100.png",
    price: 1300,
    category: 'Photobooks',
  ),

  // Product 21
  Product(
    title: "ELA-11-002",
    description: '''
-  Leather Combo
-  Graphic Engraving
-  Engraving on Cover Pad
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/ELA-11-002-1100.png",
    price: 1300,
    category: 'Photobooks',
  ),

  // Product 22
  Product(
    title: "ELA-11-003",
    description: '''
-  Leather Combo
-  Graphic Engraving
-  Engraving on Cover Pad
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/ELA-11-003-1100.png",
    price: 1300,
    category: 'Photobooks',
  ),

  // Product 23
  Product(
    title: "ELA-11-005",
    description: '''
- Leather Combo
- Graphic Engraving
- Engraving on Cover Pad
- Same Leather Bag
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/ELA-11-005-1100.png",
    price: 1300,
    category: 'Photobooks',
  ),

  // Product 24
  Product(
    title: "LCP-11-002",
    description: '''
- Leather Combo
- Engraving Text
- Engraving on Cover Pad
- Same Leather Bag
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LCP-11-002-1100.png",
    price: 1300,
    category: 'Photobooks',
  ),

  // Product 25
  Product(
    title: "WB-11-0014",
    description: '''
-  Wooden Combo
-  Photo On Wooden Box
-  Window Photo On Bag
-  Same Design Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/WB-11-0014-1000.png",
    price: 1300,
    category: 'Photobooks',
  ),

  // Product 26
  Product(
    title: "CEC-12-001",
    description: '''
-  Canvas Cover
-  Engraving On Cover Pad
-  Red Highlight Engraving
-  Same Canvas Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/CEC-10-001-1200.png",
    price: 1400,
    category: 'Photobooks',
  ),

  // Product 27
  Product(
    title: "LGC-13-001",
    description: '''
-  Leather Cover
-  Graphic On Cover Pad & Bag
-  Text Engraving
-  Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LGC-13-001-1300.png",
    price: 1600,
    category: 'Photobooks',
  ),

  // Product 28
  Product(
    title: "LBC-13-001",
    description: '''
-  Briefcase Combo
-  Photo On Cover Pad
-  Photo Cover Pad
-  Briefcase

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LBC-13-001-1300.png",
    price: 1600,
    category: 'Photobooks',
  ),

  // Product 29
  Product(
    title: "LBC-13-002",
    description: '''
-  Briefcase Combo
-  Photo On Cover Pad
-  Photo Cover Pad
-  Briefcase
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LBC-13-002-1300.png",
    price: 1600,
    category: 'Photobooks',
  ),

  // Product 30
  Product(
    title: "LCE-14-008",
    description: '''
-  Leather Cover
-  Emboss On Cover Pad
-  Engraving Text
-  Same Design Lather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LCE-14-008-1400.png",
    price: 1700,
    category: 'Photobooks',
  ),

  // Product 31
  Product(
    title: "LCE-14-009",
    description: '''
-  Leather Cover
-  Emboss On Cover Pad
-  Engraving Text
-  Same Lather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LCE-14-009-1400.png",
    price: 1700,
    category: 'Photobooks',
  ),

  // Product 32
  Product(
    title: "ABC-15-001",
    description: '''
-  Acrylic Briefcase Combo
-  Text Emboss
-  Full Acrylic Cover Pad
-  Briefcase

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/ABC-15-001-1500.png",
    price: 1800,
    category: 'Photobooks',
  ),

  // Product 33
  Product(
    title: "LBC-15-004",
    description: '''
-  Briefcase Combo
-  Text Emboss
-  Image Print On Cover Pad
-  Same Briefcase

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LBC-15-004-1500.png",
    price: 1800,
    category: 'Photobooks',
  ),

  // Product 34
  Product(
    title: "ACC-15-001",
    description: '''
-  Canvas Cover
-  Acrylic Photo On Cover Pad
-  Embass Text
-  Same Canvas Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/ACC-15-001-1500.png",
    price: 1800,
    category: 'Photobooks',
  ),

  // Product 35
  Product(
    title: "ACC-15-002",
    description: '''
-  Canvas Cover
-  Acrylic Photo On Cover Pad
-  Name on Black Strip
-  Canvas Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/ACC-15-002-1500.png",
    price: 1800,
    category: 'Photobooks',
  ),

  // Product 36
  Product(
    title: "LBE-16-003",
    description: '''
-  Leather Combo
-  Leather Cover Pad
-  Window Photo on Cover
-  Window Briefcase

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LBE-16-003-1600.png",
    price: 1900,
    category: 'Photobooks',
  ),

  // Product 37
  Product(
    title: "FPC-17-001",
    description: '''
-  Leather Cover
-  Failling on Cover Pad
-  Failling on Bag
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/FPC-17-001-1700.png",
    price: 2000,
    category: 'Photobooks',
  ),

  // Product 38
  Product(
    title: "FPC-17-002",
    description: '''
-  Leather Cover
-  Failling Print on Cover Pad
-  Failling on Bag
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/FPC-17-002-1700.png",
    price: 2000,
    category: 'Photobooks',
  ),

  // Product 39
  Product(
    title: "FPAC-17-003",
    description: '''
-  Leather Combo
-  Failling on Cover Pad
-  Acrylic Photo on Cover
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/FPAC-17-003-1700.png",
    price: 2000,
    category: 'Photobooks',
  ),

  // Product 40
  Product(
    title: "LCE-17-004",
    description: '''
-  Leather Combo
-  Failling on Cover Pad
-  Acrylic Photo on Cover
-  Same Leather Bag
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LCE-17-004-1700.png",
    price: 2000,
    category: 'Photobooks',
  ),

  // Product 41
  Product(
    title: "WCE-17-005",
    description: '''
-  Wooden Cover
-  Emboos on Cover Pad
-  Text Embass
-  Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/WCE-17-005-1700.png",
    price: 2000,
    category: 'Photobooks',
  ),

  // Product 42
  Product(
    title: "WCE-17-007",
    description: '''
-  Wooden Cover
-  Emboos on Cover Pad
-  Text Embass
-  Red Leather Bag
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/WCE-17-007-1700.png",
    price: 2000,
    category: 'Photobooks',
  ),

  // Product 43
  Product(
    title: "LPE-17-0010",
    description: '''
-  Leather Combo
-  Leather Printing
-  Emboss on Cover Pad
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LPE-17-0010-1700.png",
    price: 2000,
    category: 'Photobooks',
  ),

  // Product 44
  Product(
    title: "LPE-17-0011",
    description: '''
-  Leather Combo
-  Leather Printing
-  Emboss on Cover Pad
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LPE-17-0011-1700.png",
    price: 2000,
    category: 'Photobooks',
  ),

  // Product 45
  Product(
    title: "WCE-17-006",
    description: '''
-  Wooden Cover
-  Emboss on Cover Pad
-  Text Engraving
-  Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/WCE-17-006-1700.png",
    price: 2000,
    category: 'Photobooks',
  ),

  // Product 46
  Product(
    title: "AC-19-0012",
    description: '''
-  Acrylic Cover
-  Photo on Cover Pad
-  Text Engraving
-  Same Design Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/AC-19-0012-1900.png",
    price: 2300,
    category: 'Photobooks',
  ),

  // Product 47
  Product(
    title: "AC-19-0013",
    description: '''
-  Acrylic Cover
-  Photo on Cover Pad
-  Text Engraving
-  Same Design Bag
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/AC-19-0013-1900.png",
    price: 2300,
    category: 'Photobooks',
  ),

  // Product 48
  Product(
    title: "AC-19-0014",
    description: '''
-  Acrylic Cover
-  Graphic on Cover Pad
-  Engraving Text
-  Same Leather Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/AC-19-0014-1900.png",
    price: 2300,
    category: 'Photobooks',
  ),

  // Product 49
  Product(
    title: "EXC-22-005",
    description: '''
-  Canvas Cover
-  Exclusive Foilling Print
-  Canvas Cover Combo
-  Same Canvas Bag
-  Same Box

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/EXC-22-005-2200.png",
    price: 2600,
    category: 'Photobooks',
  ),

  // Product 50
  Product(
    title: "EXCE-22-006",
    description: '''
-  Canvas Combo
-  Foilling Print
-  Emboss on Cover Pad
-  Same Canvas Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/EXCE-22-006-2200.png",
    price: 2600,
    category: 'Photobooks',
  ),

  // Product 51
  Product(
    title: "W3PC-22-0012",
    description: '''
-  Wooden Combo
-  Window Wooden Pad
-  Photo On Cover Pad
-  Window Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/W3PC-22-0012-2200.png",
    price: 2600,
    category: 'Photobooks',
  ),

  // Product 52
  Product(
    title: "LBC-23-007",
    description: '''
-  Canvas Cover Combo
-  Exclusive Foilling Print
-  Blue Text Engraving
-  Canvas Box & Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/LBC-23-007-2300.png",
    price: 2800,
    category: 'Photobooks',
  ),

  // Product 53
  Product(
    title: "3PC-23-0015",
    description: '''
-  3 Pic Combo Cover
-  2 Window Photo on Cover
-  2 Window in Box
-  Same Design Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/3PC-23-0015-2300.png",
    price: 2800,
    category: 'Photobooks',
  ),

  // Product 54
  Product(
    title: "ALC-24-001",
    description: '''
-  Aclyric Cover
-  Text Emboss
-  Acrylic Cover Combo
-  Same Box

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/ALC-24-001-2400.png",
    price: 2900,
    category: 'Photobooks',
  ),

  // Product 55
  Product(
    title: "EBC-25-001",
    description: '''
-  Leather Cover
-  Graphic on Cover Pad
-  Engraving Text
-  Same Color Briefcase
-  Photo Inside Briefcase
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/EBC-25-001-2500.png",
    price: 3000,
    category: 'Photobooks',
  ),

  // Product 56
  Product(
    title: "GDC-25-001",
    description: '''
-  Shiny Golden Effect
-  Golden Name Plate
-  Text on Golden Plate
-  Golden Box
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/GDC-25-001-2500.png",
    price: 3000,
    category: 'Photobooks',
  ),

  // Product 57
  Product(
    title: "CCE-26-001",
    description: '''
-  Canvas Cover
-  Engraving on Cover Pad
-  Text Engraving
-  Canvas Print on Box
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/CCE-26-001-2600.png",
    price: 3100,
    category: 'Photobooks',
  ),

  // Product 58
  Product(
    title: "PBA-26-008",
    description: '''

-  Acrylic Cover
-  Foilling Print
-  Emboss on Cover Pad
-  Same Leather Bag
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/PBA-26-008-2600.png",
    price: 3100,
    category: 'Photobooks',
  ),

  // Product 59
  Product(
    title: "PC3-26-009",
    description: '''

-  Preminum Cover
-  Engraving on Cover Pad
-  Acylic Front Box
-  Same Leather Bag
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/PC3-27-0010-2700.png",
    price: 3200,
    category: 'Photobooks',
  ),

  // Product 60
  Product(
    title: "3PE-28-0013",
    description: '''
-  3 PIC Combo
-  Emboos on Cover Pad
-  Photo on Cover Pad
-  Window Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/3PE-28-0013-2800.png",
    price: 3400,
    category: 'Photobooks',
  ),

  // Product 61
  Product(
    title: "DBC-30-001",
    description: '''

-  Double Briefcase Combo
-  Photo Inside of Briefcase
-  Space for 1 Photobook
-  Space for Minibook, Calender, Pendrives
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/DBC-30-001-3000.png",
    price: 3600,
    category: 'Photobooks',
  ),

  // Product 62
  Product(
    title: "PECA-31-0016",
    description: '''

-  Premium Cover
-  Window Photo on Cover Pad
-  Window Photo on Box
-  Same Bag
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/PECA-31-0016-3100.png",
    price: 3700,
    category: 'Photobooks',
  ),

  // Product 63
  Product(
    title: "DBC-35-002",
    description: '''
-  Double Briefcase Combo
-  Photo inside of Briefcase
-  Space for 2 Photobook
Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    imageUrl: "assets/images/products/DBC-35-002-3500.png",
    price: 4200,
    category: 'Photobooks',
  ),

  //Photobooks - Minialbum

  // Product 1
  Product(
    title: "EN-01",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1900,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-01-1550.png",
  ),

// Product 2
  Product(
    title: "EN-02",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1300,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-02-1100.png",
  ),

// Product 3
  Product(
    title: "EN-03",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1300,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-03-1100.png",
  ),

// Product 4
  Product(
    title: "EN-04",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1900,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-04-1550.png",
  ),

// Product 5
  Product(
    title: "EN-05",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3400,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-05-2800.png",
  ),

// Product 6
  Product(
    title: "EN-06",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1900,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-06-1550.png",
  ),

// Product 7
  Product(
    title: "EN-07",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1900,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-07-1550.png",
  ),

// Product 8
  Product(
    title: "EN-08",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2500,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-08-2100.png",
  ),

// Product 9
  Product(
    title: "EN-09",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2200,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-09-1850.png",
  ),

// Product 10
  Product(
    title: "EN-10",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2300,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-10-1900.png",
  ),

// Product 11
  Product(
    title: "EN-11",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1900,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-11-1550.png",
  ),

// Product 12
  Product(
    title: "EN-12",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-12-850.png",
  ),

// Product 13
  Product(
    title: "EN-13",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-13-2500.png",
  ),

// Product 14
  Product(
    title: "EN-14",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2200,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-14-1800.png",
  ),

// Product 15
  Product(
    title: "EN-15",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-15-2500.png",
  ),

// Product 16
  Product(
    title: "EN-16",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-16-600.png",
  ),

// Product 17
  Product(
    title: "EN-17",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-17-850.png",
  ),

// Product 18
  Product(
    title: "EN-18",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-18-2500.png",
  ),

// Product 19
  Product(
    title: "EN-19",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-19-850.png",
  ),

// Product 20
  Product(
    title: "EN-20",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3400,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-20-2800.png",
  ),

// Product 21
  Product(
    title: "EN-21",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2800,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-21-2300.png",
  ),

// Product 22
  Product(
    title: "EN-22",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2800,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-22-2300.png",
  ),

// Product 23
  Product(
    title: "EN-23",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1800,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-23-1500.png",
  ),

// Product 24
  Product(
    title: "EN-24",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-24-2500.png",
  ),

// Product 25
  Product(
    title: "EN-25",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1900,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-25-1550.png",
  ),

// Product 26
  Product(
    title: "EN-26",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2600,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-26-2200.png",
  ),

// Product 27
  Product(
    title: "EN-27",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-27-1400.png",
  ),

// Product 28
  Product(
    title: "EN-28",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-28-850.png",
  ),

// Product 29
  Product(
    title: "EN-29",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1900,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-29-1600.png",
  ),

// Product 30
  Product(
    title: "EN-30",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1900,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-30-1550.png",
  ),

// Product 31
  Product(
    title: "EN-31",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2900,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-31-2450.png",
  ),

// Product 32
  Product(
    title: "EN-32",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-32-2500.png",
  ),

// Product 33
  Product(
    title: "EN-33",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3400,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-33-2800.png",
  ),

// Product 34
  Product(
    title: "EN-34",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 800,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-34-650.png",
  ),

// Product 35
  Product(
    title: "EN-35",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 800,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-35-650.png",
  ),

// Product 36
  Product(
    title: "EN-36",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2200,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-36-1800.png",
  ),

// Product 37
  Product(
    title: "EN-37",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2400,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-37-2000.png",
  ),

// Product 38
  Product(
    title: "EN-38",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1300,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-38-1100.png",
  ),

// Product 39
  Product(
    title: "EN-39",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-39-600.png",
  ),

// Product 40
  Product(
    title: "EN-40",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-40-600.png",
  ),

// Product 41
  Product(
    title: "EN-41",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2800,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-41-2300.png",
  ),

// Product 42
  Product(
    title: "EN-42",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-42-550.png",
  ),

// Product 43
  Product(
    title: "EN-43",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-43-600.png",
  ),

// Product 44
  Product(
    title: "EN-44",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-44-600.png",
  ),

// Product 45
  Product(
    title: "EN-45",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1800,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-45-1500.png",
  ),

// Product 46
  Product(
    title: "EN-46",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 500,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-46-400.png",
  ),

// Product 47
  Product(
    title: "EN-47",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-47-1700.png",
  ),

// Product 48
  Product(
    title: "EN-48",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-48-1700.png",
  ),

// Product 49
  Product(
    title: "EN-49",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-49-1700.png",
  ),

// Product 50
  Product(
    title: "EN-50",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-50-1700.png",
  ),

// Product 51
  Product(
    title: "EN-51",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-51-1400.png",
  ),

// Product 52
  Product(
    title: "EN-52",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-52-1400.png",
  ),

// Product 53
  Product(
    title: "EN-53",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-53-1700.png",
  ),

// Product 54
  Product(
    title: "EN-54",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-54-1700.png",
  ),

// Product 55
  Product(
    title: "EN-55",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-55-1700.png",
  ),

// Product 56
  Product(
    title: "EN-56",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2600,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-56-2200.png",
  ),

// Product 57
  Product(
    title: "EN-57",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3400,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-57-2800.png",
  ),

// Product 58
  Product(
    title: "EN-58",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1300,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-58-1100.png",
  ),

// Product 59
  Product(
    title: "EN-59",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2800,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-59-2300.png",
  ),

// Product 60
  Product(
    title: "EN-60",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-60-2500.png",
  ),

// Product 61
  Product(
    title: "EN-61",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 500,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-61-450.png",
  ),

// Product 62
  Product(
    title: "EN-62",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-62-600.png",
  ),

// Product 63
  Product(
    title: "EN-63",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-63-600.png",
  ),

// Product 64
  Product(
    title: "EN-64",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-64-3100.png",
  ),

// Product 65
  Product(
    title: "EN-65",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-65-1400.png",
  ),

// Product 66
  Product(
    title: "EN-66",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3100,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-66-2600.png",
  ),

// Product 67
  Product(
    title: "EN-67",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 400,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-67-350.png",
  ),

// Product 68
  Product(
    title: "EN-68",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1600,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-68-1300.png",
  ),

// Product 69
  Product(
    title: "EN-69",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1600,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-69-1300.png",
  ),

// Product 70
  Product(
    title: "EN-70",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1900,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-70-1600.png",
  ),

// Product 71
  Product(
    title: "EN-71",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1800,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-71-1500.png",
  ),

// Product 72
  Product(
    title: "EN-72",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2600,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-72-2200.png",
  ),

// Product 73
  Product(
    title: "EN-73",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2600,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-73-2200.png",
  ),

// Product 74
  Product(
    title: "EN-74",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-74-2500.png",
  ),

// Product 75
  Product(
    title: "EN-75",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2800,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-75-2300.png",
  ),

// Product 76
  Product(
    title: "EN-76",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3100,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-76-2600.png",
  ),

// Product 77
  Product(
    title: "EN-77",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3100,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-77-2600.png",
  ),

// Product 78
  Product(
    title: "EN-78",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3200,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-78-2700.png",
  ),

// Product 79
  Product(
    title: "EN-79",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3200,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-79-2700.png",
  ),

// Product 80
  Product(
    title: "EN-80",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2300,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-80-1900.png",
  ),

// Product 81
  Product(
    title: "EN-81",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-81-1700.png",
  ),

// Product 82
  Product(
    title: "EN-82",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2300,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-82-1900.png",
  ),

// Product 83
  Product(
    title: "EN-83",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2300,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-83-1900.png",
  ),

// Product 84
  Product(
    title: "EN-84",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-84-1700.png",
  ),

// Product 85
  Product(
    title: "EN-85",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-85-1700.png",
  ),

// Product 86
  Product(
    title: "EN-86",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2000,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-86-1700.png",
  ),

// Product 87
  Product(
    title: "EN-87",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 2600,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-87-2200.png",
  ),

// Product 88
  Product(
    title: "EN-88",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 1700,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-88-1400.png",
  ),

// Product 89
  Product(
    title: "EN-89",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3100,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-89-2600.png",
  ),

// Product 90
  Product(
    title: "EN-90",
    description: '''
-  Rexin Cover
-  Engraving on Cover Pad
-  Engraving Text
-  Same Rexin Bag

Available Sizes:-  (12X30 & 12X36)\n-  (12X24 & 18X24)\n-  (17X24 & 16X24)\n-  (15X24)''',
    price: 3100,
    category: "Photobooks",
    imageUrl: "assets/images/products/EN-90-2600.png",
  ),

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
    imageUrl: "assets/images/products/Hard-Board-Print.jpg",
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
    imageUrl: "assets/images/products/Acrylic-Photo-Prints.jpg",
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
    imageUrl: "assets/images/products/Framed-Calendar.jpg",
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
    imageUrl: "assets/images/products/Wooden-Calendar.jpg",
    price: 500,
    category: 'Calendars',
  ),

  // Customised Mobile Covers
  Product(
    title: "Customised Mobile Cover - 1",
    description: '''
- Durable Material for Maximum Protection
- Precision Cutouts for Easy Access to Buttons
- Scratch Resistant Finish
- Anti-Fingerprint Coating

Ideal for adding both style and safety to your device.
Available Sizes:Standard mobile sizes, with custom sizes available.
  ''',
    imageUrl: "assets/images/products/Customised-Mobile-Cover-1.jpeg",
    price: 350,
    category: 'Customised Mobile Covers',
  ),
  Product(
    title: "Customised Mobile Cover - 2",
    description: '''
- Stylish and Sleek Finish
- Shock Absorption Technology
- Anti-Slip Grip
- Customizable with Your Favorite Designs

Perfect for personalizing your device while keeping it safe.
Available Sizes:Standard mobile sizes, with custom sizes available.
  ''',
    imageUrl: "assets/images/products/Customised-Mobile-Cover-2.jpeg",
    price: 350,
    category: 'Customised Mobile Covers',
  ),
  Product(
    title: "Customised Mobile Cover - 3",
    description: '''
- Ultra-Slim Design with Premium Feel
- Impact Resistant Bumper
- Clear, Long-Lasting Print Quality
- Raised Edges to Protect Screen and Camera

A modern look with maximum protection for your device.
Available Sizes:Standard mobile sizes, with custom sizes available.
  ''',
    imageUrl: "assets/images/products/Customised-Mobile-Cover-3.jpeg",
    price: 350,
    category: 'Customised Mobile Covers',
  ),
  Product(
    title: "Customised Mobile Cover - 4",
    description: '''
- Lightweight and Comfortable Grip
- Dual Layer Protection for Extra Safety
- Fade-Resistant Print
- Easy to Snap On and Off

Designed for those who want both style and ease of use.
Available Sizes:Standard mobile sizes, with custom sizes available.
  ''',
    imageUrl: "assets/images/products/Customised-Mobile-Cover-4.jpeg",
    price: 350,
    category: 'Customised Mobile Covers',
  ),

  Product(
    title: "Customised Mobile Cover - 5",
    description: '''
- High-Quality Image Print
- Soft, Flexible Material for Comfort
- Shockproof Corners for Extra Protection
- Anti-Yellowing Coating

Crafted to make your phone stand out in every way.
Available Sizes:Standard mobile sizes, with custom sizes available.
  ''',
    imageUrl: "assets/images/products/Customised-Mobile-Cover-5.jpeg",
    price: 350,
    category: 'Customised Mobile Covers',
  ),
  Product(
    title: "Customised Mobile Cover - 6",
    description: '''
- Anti-Scratch and Drop Protection
- Enhanced Print Clarity with Custom Options
- Smooth, Matte Finish
- Raised Lip to Guard Screen

Perfect for combining safety with personal style.
Available Sizes:Standard mobile sizes, with custom sizes available.
  ''',
    imageUrl: "assets/images/products/Customised-Mobile-Cover-6.jpeg",
    price: 350,
    category: 'Customised Mobile Covers',
  ),
  Product(
    title: "Customised Mobile Cover - 7",
    description: '''
- Flexible, Durable Material
- High-Resolution Print Quality
- Protects Against Dust and Scratches
- Comfortable, Non-Slip Grip

Ideal for expressing yourself while keeping your phone safe.
Available Sizes:Standard mobile sizes, with custom sizes available.
  ''',
    imageUrl: "assets/images/products/Customised-Mobile-Cover-7.jpeg",
    price: 350,
    category: 'Customised Mobile Covers',
  ),
];
