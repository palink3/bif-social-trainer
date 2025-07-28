import 'package:client/core/constants/app_spacing.dart';
import 'package:client/core/constants/app_text_styles.dart';
import 'package:client/presentation/widgets/button/app_button.dart';
import 'package:flutter/material.dart';

class AuthTemplate extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<Widget> fields;
  final String buttonText;
  final VoidCallback onButtonPressed;
  final String bottomText;
  final VoidCallback? onBottomTapped;

  const AuthTemplate({
    super.key,
    required this.title,
    required this.subtitle,
    required this.fields,
    required this.buttonText,
    required this.onButtonPressed,
    required this.bottomText,
    required this.onBottomTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSpacing.screenPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildText(),
          const SizedBox(height: AppSpacing.s40),
          ...fields,
          const Spacer(),
          Center(
            child: AppPrimaryButton(
              text: buttonText,
              onPressed: onButtonPressed,
              size: AppButtonSize.large,
            ),
          ),
          const SizedBox(height: AppSpacing.s18),
          Center(
            child: GestureDetector(
              onTap: onBottomTapped,
              child: Text(
                bottomText,
                style: AppTextStyles.linkText,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.s180),
        ],
      ),
    );
  }

  _buildText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.title),
        const SizedBox(height: AppSpacing.s4),
        Text(subtitle, style: AppTextStyles.subtitle),
      ],
    );
  }
}
