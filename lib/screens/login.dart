import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/custom_button.dart';
import '../widgets/account_signUp.dart';
import '../widgets/fastLogin_icons.dart';
import '../widgets/remember_forgotPassword.dart';
import '../widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    //var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.06),
              BackdropFilter(
                filter:
                    const ColorFilter.mode(Colors.lightBlue, BlendMode.lighten),
                child: Image.asset("assets/images/swim_login_welcome.png"),
              ),
              SizedBox(height: screenHeight * 0.05),
              const BuildTextField(),
              SizedBox(height: screenHeight * 0.01),
              const RememberForgot(),
              SizedBox(height: screenHeight * 0.04),
              CustomButton(
                onPressed: () {},
                width: screenHeight * 0.90,
              ),
              SizedBox(height: screenHeight * 0.03),
              AccountSignUp(
                textButtonOnPressed: () {
                  context.go("/signUp");
                },
              ),
              SizedBox(height: screenHeight * 0.02),
              const FastLoginIcons(),
            ],
          ),
        ),
      ),
    );
  }
}
