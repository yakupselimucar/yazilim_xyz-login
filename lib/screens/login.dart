import 'package:flutter/material.dart';

import '../widgets/account_signUp.dart';
import '../widgets/fastLogin_icons.dart';
import '../widgets/login_button.dart';
import '../widgets/remember_forgotPassword.dart';
import '../widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    //var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage("assets/images/bottom_wave.png"),
              fit: BoxFit.contain),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BackdropFilter(
                filter:
                    const ColorFilter.mode(Colors.lightBlue, BlendMode.lighten),
                child: Image.asset("assets/images/swim_login_welcome.png")),
            SizedBox(height: screenHeight * 0.05),
            BuildTextField(),
            SizedBox(height: screenHeight * 0.01),
            RememberForgot(),
            SizedBox(height: screenHeight * 0.04),
            LoginButton(),
            SizedBox(height: screenHeight * 0.02),
            AccountSignUp(),
            SizedBox(height: screenHeight * 0.02),
            FastLoginIcons(),
          ],
        ),
      ),
    );
  }
}
