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
    return Scaffold(
      body: Container(
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
            BuildTextField(),
            LoginButton(),
            RememberForgot(),
            AccountSignUp(),
            FastLoginIcons(),
          ],
        ),
      ),
    );
  }
}
