import 'package:client/core/constants/app_colors.dart';
import 'package:client/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final VoidCallback? onToggleObscure;
  final bool isPassword;

  const AuthTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.onToggleObscure,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: AppColors.black,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          hintText: hintText,
          hintStyle: AppTextStyles.fieldHint,
          suffixIcon:
              isPassword
                  ? IconButton(
                    icon: Icon(
                      size: 18,
                      obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: onToggleObscure,
                  )
                  : null,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFDDDDDD), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFDDDDDD), width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.primaryBlue, width: 1),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '필수 입력 항목입니다.';
          }
          return null;
        },
      ),
    );
  }
}
