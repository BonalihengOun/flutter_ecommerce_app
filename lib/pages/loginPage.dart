import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/HomePage.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/SignIn.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/TextFieldEmail.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/TextFieldPassword.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/loginWithFacebook.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/loginWithGoogle.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/pages/Registerform.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 112),
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
                'Welcome to E-commerce app',
                style: TextStyle(
                  fontFamily: 'NiraBold',
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Sign in to continue',
                style: TextStyle(
                    fontFamily: 'NiraRegular',
                    fontSize: 16,
                    letterSpacing: 0.2,
                    color: Grey),
              ),
              SizedBox(
                height: 28,
              ),
              EmailInput(inputController: _emailController),
              PasswordInput(
                inputController: _passwordController,
                text: 'Password',
              ),
              SizedBox(
                height: 40,
              ),
              SignInButton(
                text: 'Sign In',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => HomePage(),
                  ));
                },
                right: 150,
                left: 150,
                top: 15,
                bottom: 15,
              ),
              SizedBox(
                height: 21,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 100,
                    color: BluePrimary.withOpacity(0.3),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'OR',
                    style: TextStyle(fontFamily: 'NiraBold', color: Grey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 1,
                    width: 100,
                    color: BluePrimary.withOpacity(0.3),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              GoogleLoginButton(
                onPressed: () {
                  // Perform Google login action here
                },
              ),
              SizedBox(
                height: 12,
              ),
              FacebookLoginButton(onPressed: () {}),
              SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      fontFamily: 'NiraBold',
                      fontSize: 12,
                      color: BluePrimary,
                      letterSpacing: 0.5),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontFamily: 'NiraRegular',
                        color: Grey,
                        fontSize: 12,
                        letterSpacing: 0.5),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => Register(),
                      ));
                    },
                    child: Text(
                      'Register',
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
