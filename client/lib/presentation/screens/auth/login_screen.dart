import 'package:client/core/constants/app_spacing.dart';
import 'package:client/core/constants/app_text_styles.dart';
import 'package:client/presentation/screens/auth/widgets/auth_template.dart';
import 'package:client/presentation/screens/auth/widgets/auth_text_field.dart';
import 'package:client/presentation/widgets/app_bar/app_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _idController = TextEditingController();
  final _pwController = TextEditingController();
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppNavBar(
        title: '로그인하기'
      ),
      body: AuthTemplate(
        title: '로그인',
        subtitle: '환영합니다 🎉',
        fields: [
          const Text('사용자 ID', style: AppTextStyles.fieldLabel),
          const SizedBox(height: AppSpacing.s8),
          AuthTextField(
            controller: _idController,
            hintText: '사용자 ID를 입력하세요.',
            obscureText: false,
            isPassword: false,
            onToggleObscure: null,
          ),
          const SizedBox(height: AppSpacing.s20),
          const Text('비밀번호', style: AppTextStyles.fieldLabel),
          const SizedBox(height: AppSpacing.s8),
          AuthTextField(
            controller: _pwController,
            hintText: '비밀번호를 입력하세요.',
            obscureText: _obscure,
            isPassword: true,
            onToggleObscure: () {
              setState(() {
                _obscure = !_obscure;
              });
            },
          ),
        ],
        buttonText: '로그인하기',
        onButtonPressed: () {
          // Todo: 로그인 로직
        },
        bottomText: '회원가입 하러가기',
        onBottomTapped: () {
          context.go('/signup');
        },
      ),
    );
  }
}
