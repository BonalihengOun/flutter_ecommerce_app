import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/HomePage.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/SignIn.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/TextFieldEmail.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/TextFieldPassword.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/loginWithFacebook.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/loginWithGoogle.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/firebase/firebase_auth_service.dart';
import 'package:flutter_sneaker_shop_ecommerce/pages/Registerform.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final firebaseAuthService _auth = firebaseAuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isSigning = false;
  @override
  void dispose() {
    // TODO: implement dispose

    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 112),
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
                'N I K E',
                style: TextStyle(
                  fontFamily: 'NiraBold',
                  fontSize: 18,
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
                onPressed: _signIn,
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
                    color: Dark.withOpacity(0.3),
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
                    color: Dark.withOpacity(0.3),
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
                      color: Dark,
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
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Register()), (route) => false);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontFamily: 'NiraBold',
                          fontSize: 12,
                          color: Dark,
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

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print('Successfully SignedIn');
    } else {
      print('Some error happend');
    }
  }
}
