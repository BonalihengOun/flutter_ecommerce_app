import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter_sneaker_shop_ecommerce/Screen/AccountScreen.dart';
import 'package:flutter_sneaker_shop_ecommerce/Screen/CartScreen.dart';
import 'package:flutter_sneaker_shop_ecommerce/Screen/ExploreScreen.dart';
import 'package:flutter_sneaker_shop_ecommerce/Screen/HomeScreen.dart';
import 'package:flutter_sneaker_shop_ecommerce/Screen/OfferScreen.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _screen = [
    HomeScreen(),
    Explore(),
    Cart_screen(),
    Offer_screen(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentIndex],
      bottomNavigationBar: NavBar(_currentIndex, _onItemTapped),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class NavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  NavBar(this.currentIndex, this.onItemTapped);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CustomNavigationBar(
            iconSize: 25,
            strokeColor: Dark.withOpacity(0.1),
            scaleCurve: Curves.bounceIn,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              CustomNavigationBarItem(
                icon: currentIndex == 0
                    ? Image.asset(
                        'lib/assets/pic/iconNavBar/Home.png',
                        color: Dark,
                      )
                    : Image.asset(
                        'lib/assets/pic/iconNavBar/Home.png',
                      ),
                title: currentIndex == 0
                    ? Text(
                        "Home",
                        style: TextStyle(
                            fontFamily: 'NiraBold', fontSize: 12, color: Dark),
                      )
                    : Text(
                        "Home",
                        style: TextStyle(
                            fontFamily: 'NiraRegular',
                            fontSize: 12,
                            color: Colors.grey.shade500),
                      ),
              ),
              CustomNavigationBarItem(
                icon: currentIndex == 1
                    ? Image.asset(
                        'lib/assets/pic/iconNavBar/Search.png',
                        color: Dark,
                      )
                    : Image.asset('lib/assets/pic/iconNavBar/Search.png'),
                title: currentIndex == 1
                    ? Text(
                        "Explore",
                        style: TextStyle(
                            fontFamily: 'NiraBold', fontSize: 12, color: Dark),
                      )
                    : Text(
                        "Explore",
                        style: TextStyle(
                            fontFamily: 'NiraRegular',
                            fontSize: 12,
                            color: Colors.grey.shade500),
                      ),
              ),
              CustomNavigationBarItem(
                icon: currentIndex == 2
                    ? Image.asset(
                        'lib/assets/pic/iconNavBar/Card.png',
                        color: Dark,
                      )
                    : Image.asset('lib/assets/pic/iconNavBar/Card.png'),
                title: currentIndex == 2
                    ? Text(
                        "Cart",
                        style: TextStyle(
                            fontFamily: 'NiraBold', fontSize: 12, color: Dark),
                      )
                    : Text(
                        "Cart",
                        style: TextStyle(
                            fontFamily: 'NiraRegular',
                            fontSize: 12,
                            color: Colors.grey.shade500),
                      ),
              ),
              CustomNavigationBarItem(
                icon: currentIndex == 3
                    ? Image.asset(
                        'lib/assets/pic/iconNavBar/Offer.png',
                        color: Dark,
                      )
                    : Image.asset('lib/assets/pic/iconNavBar/Offer.png'),
                title: currentIndex == 3
                    ? Text(
                        "Offer",
                        style: TextStyle(
                            fontFamily: 'NiraBold', fontSize: 12, color: Dark),
                      )
                    : Text(
                        "Offer",
                        style: TextStyle(
                            fontFamily: 'NiraRegular',
                            fontSize: 12,
                            color: Colors.grey.shade500),
                      ),
              ),
              CustomNavigationBarItem(
                icon: currentIndex == 4
                    ? Image.asset(
                        'lib/assets/pic/iconNavBar/Account.png',
                        color: Dark,
                      )
                    : Image.asset('lib/assets/pic/iconNavBar/Account.png'),
                title: currentIndex == 4
                    ? Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          "Account",
                          style: TextStyle(
                              fontFamily: 'NiraBold',
                              fontSize: 12,
                              color: Dark),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          "Account",
                          style: TextStyle(
                              fontFamily: 'NiraRegular',
                              fontSize: 12,
                              color: Colors.grey.shade500),
                        ),
                      ),
              ),
            ],
            currentIndex: currentIndex,
            onTap: (index) {
              onItemTapped(index);
            },
          ),
        ),
      ),
    );
  }
}
