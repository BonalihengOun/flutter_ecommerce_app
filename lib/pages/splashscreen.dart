import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/firebase/Auth_page.dart';
import 'package:flutter_sneaker_shop_ecommerce/pages/loginPage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => LoginPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Dark,
        body: Center(
          child: Container(
            width: 72,
            height: 72,
            child: Image.asset('lib/assets/pic/Icon App/single icon White.png'),
          ),
        ),
      ),
    );
  }
}
