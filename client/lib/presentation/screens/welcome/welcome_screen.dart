import 'package:client/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'widgets/welcome_body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.welcomeBackground,
      body: SafeArea(
        child: WelcomeBody(),
      ),
    );
  }
}
