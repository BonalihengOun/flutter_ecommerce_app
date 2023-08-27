import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 111),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'lib/assets/pic/Icon.png',
                  width: 72,
                  height: 72,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Let's Get Started",
                style: TextStyle(
                  fontFamily: 'NiraBold',
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Create a new account',
                style: TextStyle(
                    fontFamily: 'NiraRegular',
                    fontSize: 16,
                    letterSpacing: 0.5,
                    color: Grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
