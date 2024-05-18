import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGIconWidget extends StatelessWidget {
  const SVGIconWidget(
      {super.key,
      required this.tooltip,
      required this.path,
      this.splashColor,
      required this.onTap});

  final String tooltip, path;
  final Color? splashColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      hoverColor: splashColor,
      tooltip: tooltip,
      icon: SvgPicture.asset(
        path,
      ),
      onPressed: onTap,
    );
  }
}
