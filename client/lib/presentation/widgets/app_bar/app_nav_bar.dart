import 'package:client/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppNavBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppNavBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,
      title: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, size: 20, color: Colors.black),
            onPressed: () => Navigator.pop(context),
          ),
          Text(
            title,
            style: AppTextStyles.navTitle
          ),
        ],
      ),
    );
  }
}
