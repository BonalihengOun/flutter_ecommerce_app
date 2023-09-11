import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/component/SuperFlashsaleGridView.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/offer%20Banner/Promotion_Card.dart';

class SuperFlashSale extends StatefulWidget {
  const SuperFlashSale({super.key});

  @override
  State<SuperFlashSale> createState() => _SuperFlashSaleState();
}

class _SuperFlashSaleState extends State<SuperFlashSale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          splashRadius: 20,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'lib/assets/pic/Left.png',
            color: Grey,
          ),
        ),
        titleSpacing: 5,
        title: Text(
          "Super Flash Sale",
          style: TextStyle(fontFamily: "NiraBold", fontSize: 16, color: Dark),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Ink(
              decoration: ShapeDecoration(
                color: Colors
                    .transparent, // Set the background color to transparent
                shape: CircleBorder(), // Customize the shape as needed
              ),
              child: IconButton(
                splashRadius: 18,
                onPressed: () {},
                icon: Image.asset('lib/assets/pic/iconNavBar/Search.png'),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Promotion(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30),
                            child: Product_3(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
