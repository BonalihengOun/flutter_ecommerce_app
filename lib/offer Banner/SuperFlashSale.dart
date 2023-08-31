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
          IconButton(
            onPressed: () {},
            alignment: Alignment(-4, 0),
            icon: Image.asset("lib/assets/pic/iconNavBar/Search.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'lib/assets/pic/Promotion 1.png',
                            height: 220,
                            width: 340,
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, top: 32, right: 110, bottom: 102),
                              child: Text(
                                'Super Flash Sale\n50%off',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'NiraBold',
                                    letterSpacing: 0.5,
                                    color: Light),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Product_3(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
