import 'package:client/core/constants/app_colors.dart';
import 'package:client/core/constants/app_spacing.dart';
import 'package:client/core/constants/app_text_styles.dart';
import 'package:client/presentation/widgets/button/app_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'welcome_illustration.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: -50,
          right: -50,
          child: Container(
            height: 580,
            decoration: const BoxDecoration(
              color: Color(0x66FFFFFF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(300),
                bottomRight: Radius.circular(300),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.screenPadding,
          ),
          child: SizedBox.expand(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: AppSpacing.s28),
                _buildWelcomeText(),
                const SizedBox(height: AppSpacing.s24),
                const WelcomeIllustration(),
                const SizedBox(height: AppSpacing.s100),
                AppPrimaryButton(
                  text: '로그인하기',
                  onPressed: () {
                    context.go('/login');
                  },
                  size: AppButtonSize.medium,
                ),
                const SizedBox(height: AppSpacing.s20),
                AppPrimaryButton(
                  text: '가입하기',
                  onPressed: () {
                    context.go('/signup');
                  },
                  size: AppButtonSize.medium,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _buildWelcomeText() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: AppSpacing.s32),
        Text(
          '함께 연습하는 대화 시간!',
          style: AppTextStyles.title,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: AppSpacing.s16),
        Text(
          '다양한 상황 속에서 말하는 방법을 익혀보자.\n준비됐지?',
          style: AppTextStyles.subtitle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
