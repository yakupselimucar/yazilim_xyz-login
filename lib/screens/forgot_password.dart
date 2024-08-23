import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../components/build_text_field.dart';
import '../components/custom_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.16),
              SizedBox(
                width: screenWidth * 0.66,
                height: screenHeight * 0.22,
                child: Image.asset(
                  "assets/images/reset_password_lock.png",
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              const BuildCustomTextField(
                text: "Email",
                icon: Icons.email,
              ),
              SizedBox(height: screenHeight * 0.04),
              CustomButton(
                text: "Send Code",
                onPressed: () {},
                width: screenHeight * 0.90,
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
