// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/SignIn.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/TextFieldEmail.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/TextFieldPassword.dart';
import 'package:flutter_sneaker_shop_ecommerce/Widegt_Component/fullnameWidget.dart';
import 'package:flutter_sneaker_shop_ecommerce/constants/colors.dart';
import 'package:flutter_sneaker_shop_ecommerce/firebase/firebase_auth_service.dart';
import 'package:flutter_sneaker_shop_ecommerce/pages/loginPage.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final firebaseAuthService _auth = firebaseAuthService();
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _PasswordformController = TextEditingController();
  final TextEditingController _ConfirmPWController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _fullnameController.dispose();
    _emailController.dispose();
    _ConfirmPWController.dispose();
    _PasswordformController.dispose();
    super.dispose();
  }

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
                  EmailInput(inputController: _emailController),
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
                    onPressed: _signUp,
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
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                          (route) => false);
                    },
                    child: Text(
                      'Sign In',
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

  void _signUp() async {
    String fullname = _fullnameController.text;
    String email =
        _emailController.text.trim(); // Trim to remove leading/trailing spaces
    String password = _PasswordformController.text;
    String confirmPassword = _ConfirmPWController.text;

    if (email.isEmpty || !isValidEmail(email)) {
      // Handle invalid email format
      print('Invalid email address format');
      return;
    }

    if (password != confirmPassword) {
      // Handle password confirmation mismatch
      print('Password confirmation does not match');
      return;
    }

    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(
            backgroundColor: Light,
            color: Dark,
          ),
        );
      },
    );

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      // Sign-up was successful, navigate to the login page.
      print('Successfully Created account');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      // Handle the case where sign-up failed (e.g., display an error message).
      print('Some error happened during sign-up');
      Navigator.pop(context); // Remove the dialog if sign-up failed
    }
  }

  bool isValidEmail(String email) {
    // Simple email format validation using a regular expression
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegex.hasMatch(email);
  }
}
