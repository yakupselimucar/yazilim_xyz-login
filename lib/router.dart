import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:yazilim_xyz/screens/forgot_password.dart';
import 'package:yazilim_xyz/screens/login.dart';

import 'screens/signUp.dart';

final GoRouter router = GoRouter(
  //initialLocation: '/',
  routes: [
    GoRoute(
      path: "/", //initial location bu şekilde belirtiliyor
      name: "login",
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const LoginScreen(), // Yeni sayfanızın widget'ı
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    ),
    GoRoute(
      path: "/signUp",
      name: "signUp",
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: SignUpScreen(), // Yeni sayfanızın widget'ı
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    ),
    GoRoute(
      path: "/forgot",
      name: "forgot",
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const ForgotPasswordScreen(), // Yeni sayfanızın widget'ı
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      ),
    ),
  ],
);
