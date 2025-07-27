import 'package:client/presentation/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/welcome',
  routes: [
    GoRoute(
      path: '/welcome',
      name: 'welcome',
      builder: (context, state) => const WelcomeScreen(),
    ),
    //   GoRoute(
    //   path: '/login',
    //   name: 'login',
    //   builder: (context, state) => const LoginScreen(),
    // ),
  ],
);
