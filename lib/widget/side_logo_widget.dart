

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SideLogoWidget extends StatelessWidget {
  const SideLogoWidget({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "AB",
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: CustomColor.yellowPrimary,
            decoration: TextDecoration.underline,
            decorationColor: CustomColor.primaryLightColor
        ),
      ),
    );
  }
}
