import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/SignIn.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/TextFieldEmail.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/TextFieldPassword.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/fullnameWidget.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/pages/loginPage.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _EmailController = TextEditingController();
  final TextEditingController _PasswordformController = TextEditingController();
  final TextEditingController _ConfirmPWController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 111),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'lib/assets/pic/Icon App/single icon White.png',
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
                    fontSize: 14,
                    letterSpacing: 0.5,
                    color: Grey.withOpacity(0.8)),
              ),
              SizedBox(
                height: 28,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  fullnameForm(inputController: _fullnameController),
                  EmailInput(inputController: _EmailController),
                  PasswordInput(
                    inputController: _PasswordformController,
                    text: 'Password',
                  ),
                  PasswordInput(
                    inputController: _ConfirmPWController,
                    text: 'Comfirm Password',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SignInButton(
                    text: 'Sign Up',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => LoginPage(),
                      ));
                    },
                    right: 150,
                    left: 150,
                    top: 20,
                    bottom: 20,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "have an account?",
                    style: TextStyle(
                        fontFamily: 'NiraRegular',
                        color: Grey,
                        fontSize: 12,
                        letterSpacing: 0.5),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => LoginPage(),
                      ));
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          fontFamily: 'NiraBold',
                          fontSize: 12,
                          color: BluePrimary,
                          letterSpacing: 0.5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
