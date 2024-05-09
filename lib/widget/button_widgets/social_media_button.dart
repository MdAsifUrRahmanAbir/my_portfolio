import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final String link;
  final Color color;
  final Color iconColor;
  final double size;

  const SocialMediaButton({
    super.key,
    required this.icon,
    required this.link,
    this.color = Colors.blue,
    this.iconColor = Colors.white,
    this.size = 40.0,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => _launchUrl(Uri.parse(link)),
      icon: Icon(
        icon,
        color: iconColor,
        size: size,
      ),
      color: color,
      iconSize: size,
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
