import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryTextWidget extends StatelessWidget {
  const PrimaryTextWidget(
    this.text, {
    super.key,
    this.padding,
    this.opacity = 1,
    this.style,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.overflow,
    this.maxLines,
    this.textAlign,
  });

  final String text;
  final EdgeInsetsGeometry? padding;
  final double opacity;
  final TextStyle? style;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Text(
            text.tr,
            maxLines: maxLines,
            overflow: overflow,
            textAlign: textAlign,
            style: style ??
                TextStyle(
                    color: color, fontSize: fontSize, fontWeight: fontWeight),
          )),
    );
  }
}
