import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/build_text_field.dart';
import '../components/custom_button.dart';
import '../widgets/account_signUp.dart';
import '../widgets/fastLogin_icons.dart';
import '../widgets/text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            context.go("/");
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.03),
              SizedBox(
                width: screenWidth * 0.66,
                height: screenHeight * 0.22,
                child: Image.asset(
                  "assets/images/save_register.png",
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              const BuildCustomTextField(),
              const SizedBox(height: 20),
              const BuildTextField(),
              SizedBox(height: screenHeight * 0.05),
              CustomButton(
                text: "Register",
                onPressed: () {},
                width: screenHeight * 0.90,
              ),
              SizedBox(height: screenHeight * 0.03),
              const FastLoginIcons(),
              SizedBox(height: screenHeight * 0.01),
              AccountSignUp(
                text: "Already have an account?",
                ButtonText: "Login Here",
                textButtonOnPressed: () {
                  context.go("/");
                },
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
