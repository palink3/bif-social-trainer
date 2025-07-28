import 'package:client/core/constants/app_colors.dart';
import 'package:client/core/constants/app_radius.dart';
import 'package:client/core/constants/app_spacing.dart';
import 'package:client/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

enum AppButtonSize {
  small,
  medium,
  large,
}

class AppPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final AppButtonSize size;

  const AppPrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.size = AppButtonSize.large,
  });

  double _getWidth() {
    switch (size) {
      case AppButtonSize.medium:
        return 244;
      case AppButtonSize.large:
        return 256;
      case AppButtonSize.small:
        return 200;
    }
  }

  double _getHeight() {
    switch (size) {
      case AppButtonSize.medium:
        return 44;
      case AppButtonSize.large:
        return 46;
      case AppButtonSize.small:
        return 40;
    }
  }

  double _getRadius() {
    switch (size) {
      case AppButtonSize.medium:
        return 16;
      case AppButtonSize.large:
        return 8;
      case AppButtonSize.small:
        return 20;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _getWidth(),
      height: _getHeight(),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_getRadius()),
          ),
          elevation: 0,
        ),
        child: Text(
          text,
          style: AppTextStyles.button,
        ),
      ),
    );
  }
}
