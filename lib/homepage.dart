import 'package:album_catalog/customize/customize_page.dart';
import 'package:album_catalog/products/product_catalog.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

double sHR = 1; // sHR == Screen Height Ratio of Every Mobile

class HomePage extends StatefulWidget {
  final int initialIndex;

  HomePage({required this.initialIndex});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  final List<Widget> _pages = [
    ProductCatalogPage(),
    const CustomisedAlbumPage()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        // centerTitle: true,
        backgroundColor: const Color(0xFFA40F4F),
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 30,
              width: 30,
              color: Colors.white,
            ),
            const SizedBox(
              width: 12,
            ),
            const Text(
              'MyAlbumry',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: _pages[_currentIndex],
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.easeInOut,
        selectedIndex: _currentIndex,
        onItemSelected: _onTabTapped,
        iconSize: sHR * 30,
        height: sHR * 60,
        items: [
          FlashyTabBarItem(
            activeColor: const Color(0xFFA40F4F),
            inactiveColor: Colors.black54,
            icon: const Icon(
              LineIcons.home,
            ),
            title: Text(
              'HOME',
              style: TextStyle(
                fontSize: sHR * 18,
              ),
            ),
          ),
          FlashyTabBarItem(
            activeColor: const Color(0xFFA40F4F),
            inactiveColor: Colors.black54,
            icon: const Icon(
              LineIcons.edit,
            ),
            title: Text(
              'CUSTOMIZE',
              style: TextStyle(
                fontSize: sHR * 18,
              ),
            ),
          ),
          // FlashyTabBarItem(
          //   activeColor: Color(0xFF3D3D3D),
          //   inactiveColor: Colors.black54,
          //   icon: const Icon(
          //     Icons.folder_open_rounded,
          //   ),
          //   title: Text(
          //     'Files',
          //     style: TextStyle(
          //       fontSize: sHR * 18,
          //     ),
          //   ),
          // ),
          // FlashyTabBarItem(
          //   activeColor: Color(0xFF3D3D3D),
          //   inactiveColor: Colors.black54,
          //   icon: Image.asset(
          //     "assets/images/transaction.png",
          //     height: sHR * 24,
          //     width: sHR * 24,
          //     color: Colors.black54,
          //   ),
          //   title: Text(
          //     'Expense',
          //     style: TextStyle(
          //       fontSize: sHR * 18,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
