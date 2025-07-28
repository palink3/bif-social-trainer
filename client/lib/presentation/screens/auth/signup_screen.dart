import 'package:client/core/constants/app_spacing.dart';
import 'package:client/core/constants/app_text_styles.dart';
import 'package:client/presentation/screens/auth/widgets/auth_template.dart';
import 'package:client/presentation/screens/auth/widgets/auth_text_field.dart';
import 'package:client/presentation/widgets/app_bar/app_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignupScreen> {
  final _idController = TextEditingController();
  final _pwController = TextEditingController();
  final _pwConfirmController = TextEditingController();
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppNavBar(title: '가입하기'),
      body: AuthTemplate(
        title: '시작하기',
        subtitle: '가입 후 대화를 시작해보세요',
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
          const SizedBox(height: AppSpacing.s20),
          const Text('비밀번호 확인', style: AppTextStyles.fieldLabel),
          const SizedBox(height: AppSpacing.s8),
          AuthTextField(
            controller: _pwConfirmController,
            hintText: '비밀번호를 재입력하세요.',
            obscureText: _obscure,
            isPassword: true,
            onToggleObscure: () {
              setState(() {
                _obscure = !_obscure;
              });
            },
          ),
        ],
        buttonText: '가입하기',
        onButtonPressed: () {
          // TODO : 회원가입 로직
        },
        bottomText: '로그인 하러가기',
        onBottomTapped: () {
          context.go('/login');
        },
      ),
    );
  }
}
