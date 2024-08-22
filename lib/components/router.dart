import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:yazilim_xyz/screens/login.dart';

import '../screens/signUp.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: "/",
      name: "login",
      builder: (context, state) => const LoginScreen(),
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
  ],
);
