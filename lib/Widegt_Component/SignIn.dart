import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class SignInButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const SignInButton({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const accentColor = Color(0xffffffff);

    const double borderRadius = 5;

    return DecoratedBox(
        decoration: BoxDecoration(
          color: BluePrimary,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            alignment: Alignment.center,
            padding: MaterialStateProperty.all(const EdgeInsets.only(
                right: 150, left: 150, top: 15, bottom: 15)),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius)),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
              color: accentColor,
              fontSize: 14,
              fontFamily: 'NiraBold',
            ),
          ),
        ));
  }
}
