import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class GoogleLoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  const GoogleLoginButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Image.asset(
          'lib/assets/pic/Google.png',
          width: 24,
          height: 24,
          alignment: Alignment(-16, 0),
        ), // Replace with the actual icon
        label: Text(
          'Login with Google',
          style: TextStyle(
              fontSize: 14,
              fontFamily: 'NiraBold',
              color: Grey,
              letterSpacing: 0.5),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Grey.withOpacity(0.0),
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
