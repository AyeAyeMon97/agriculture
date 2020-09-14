import 'package:agricare/pages/loan.dart';
import 'package:agricare/pages/mainPage.dart';
import 'package:agricare/pages/shop_list.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  static const String routeName = '/bottomNavigation';
  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.lightGreen,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text('ပင်မ')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('ဆိုင်များ')),
          BottomNavigationBarItem(
              icon: Icon(Icons.show_chart), title: Text('ချေးငွေ'))
        ],
        onTap: _onTappedBar,
        // selectedItemColor: Colors.orange,
        currentIndex: _selectedIndex,
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[MainPage(), ShopPage(), LoanPage()],
      ),
    );
  }
}
