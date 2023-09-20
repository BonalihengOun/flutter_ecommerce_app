import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/ProductListView_2.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/ProductListView_1.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/SearchWidget.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/categoryListView.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/Promotion_Card.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/Recommend_Card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();
  final PageController indicatorController = PageController();
  final TextEditingController _searchInputController = TextEditingController();
  Timer? timer;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();

    // Set up a timer to change the page every 3 seconds
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (currentPage < 1) {
        currentPage++; // Increment the page index
      } else {
        currentPage = 0; // Reset to the first page when reaching the end
      }
      // Use animateToPage to smoothly transition to the next page
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    timer?.cancel(); // Cancel the timer when disposing of the widget
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Light.withOpacity(0.2),
        body: Stack(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: SearchInput(
                            textController: _searchInputController,
                            hintText: 'Search Product'),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              splashRadius: 20.5,
                              icon: Icon(
                                Icons.favorite_border,
                                color: Dark,
                                size: 24,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              splashRadius: 20.5,
                              icon: Image.asset(
                                'lib/assets/pic/NotificationIcon.png',
                                width: 24,
                                height: 24,
                                color: Dark,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.23,
                          margin: EdgeInsets.only(left: 5),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: PageView.builder(
                              controller: pageController,
                              itemCount: 2, // Set the number of pages
                              itemBuilder: (context, index) {
                                //return Promotion and Recommend widgets here
                                //based on the current index.
                                return index == 0 ? Promotion() : Recommend();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SmoothPageIndicator(
                        controller:
                            pageController, // Use the new controller here
                        count: 2,
                        effect: WormEffect(
                          type: WormType.underground,
                          activeDotColor: Dark.withOpacity(0.8),
                          dotHeight: 10,
                          dotWidth: 10,
                          dotColor: Grey,
                          spacing: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 6,
                        child: Text(
                          'Category',
                          style: TextStyle(
                              fontFamily: 'NiraBold',
                              fontSize: 14,
                              color: Dark),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'More Category',
                          style: TextStyle(
                              fontFamily: 'NiraBold',
                              fontSize: 14,
                              color: Dark),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 101,
                  child: categoryListView(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Flash Sale',
                        style: TextStyle(
                            fontFamily: 'NiraBold', fontSize: 14, color: Dark),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'See more',
                          style: TextStyle(
                              fontFamily: 'NiraBold',
                              fontSize: 14,
                              color: Dark),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 0,
                        child: Product_1(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 0,
                              child: Text(
                                'Mega Sale',
                                style: TextStyle(
                                    fontFamily: 'NiraBold',
                                    fontSize: 14,
                                    color: Dark),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'See more',
                                style: TextStyle(
                                    fontFamily: 'NiraBold',
                                    fontSize: 14,
                                    color: Dark),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Product_2(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
