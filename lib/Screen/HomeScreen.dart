import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/ProductListView.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/SearchWidget.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/categoryListView.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/model/category.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/Promotion_Card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Controller = PageController();
  final TextEditingController _searchInputController = TextEditingController();

  @override
  void dispose() {
    Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SearchInput(
                      textController: _searchInputController,
                      hintText: 'Search Product'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        splashRadius: 1.5,
                        alignment: Alignment(3, 0),
                        icon: Icon(
                          Icons.favorite_border,
                          color: Grey,
                          size: 24,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        splashRadius: 1.5,
                        autofocus: EditableText.debugDeterministicCursor,
                        alignment: Alignment(1, 0),
                        icon: Image.asset(
                          'lib/assets/pic/NotificationIcon.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 220,
                  width: 350,
                  child: PageView(
                    controller: Controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Promotion(
                        text: '\tSuper Flash Sale\n 50% off',
                        image: 'lib/assets/pic/Promotion 1.png',
                        onTap: () {},
                      ),
                      Promotion(
                        text: 'Recommended \nProduct',
                        image: 'lib/assets/pic/Promotion 2.png',
                        onTap: () {},
                      ),
                      Promotion(
                        text: 'Recommended \nProduct',
                        image: 'lib/assets/pic/Promotion 2.png',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SmoothPageIndicator(
                    controller: Controller,
                    count: 3,
                    effect: WormEffect(
                      type: WormType.underground,
                      activeDotColor: BluePrimary.withOpacity(0.8),
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
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                        fontFamily: 'NiraBold', fontSize: 14, color: Dark),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'More Category',
                      style: TextStyle(
                          fontFamily: 'NiraBold',
                          fontSize: 14,
                          color: BluePrimary),
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
                          color: BluePrimary),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Product_1(),
            ),
          ],
        ),
      ),
    );
  }
}
