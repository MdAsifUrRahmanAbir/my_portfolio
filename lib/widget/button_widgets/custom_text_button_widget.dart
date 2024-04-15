import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget(
      {super.key, required this.onTap, required this.text});

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
          onPressed: onTap,
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: CustomColor.primaryDarkTextColor),
          )),
    );
  }
}
