import 'package:client/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class WelcomeIllustration extends StatelessWidget {
  const WelcomeIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.illustrations.illWelcome.image(
          width: 270,
          height: 320,
          fit: BoxFit.cover
    );
  }
}
