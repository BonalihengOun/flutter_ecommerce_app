import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class FacebookLoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const FacebookLoginButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.85,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Image.asset(
          'lib/assets/pic/Facebook.png',
          width: 24,
          height: 24,
          alignment: Alignment(-116, 0),
        ), // Replace with the actual icon
        label: Text(
          'Login with Facebook',
          style: TextStyle(
              fontSize: 14,
              fontFamily: 'NiraBold',
              color: Grey,
              letterSpacing: 0.5),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Grey.withOpacity(0.0),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
