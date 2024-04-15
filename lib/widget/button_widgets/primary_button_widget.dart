import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/dimensions.dart';
import '../text_wdgets/primary_text_widget.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;

  const PrimaryButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      child: ElevatedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
              // horizontal: Dimensions.paddingHorizontalSize * 3,
              vertical: Dimensions.paddingVerticalSize * .8),
          elevation: 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.r),
              ),
              side: BorderSide(width: 1, color: borderColor ?? Colors.transparent)),
        ),
        child: PrimaryTextWidget(
          (title).toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
