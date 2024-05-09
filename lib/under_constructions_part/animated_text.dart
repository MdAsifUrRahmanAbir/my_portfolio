import 'package:flutter/material.dart';


class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({super.key, required this.text});

  final String text;

  @override
  AnimatedTextWidgetState createState() => AnimatedTextWidgetState();
}

class AnimatedTextWidgetState extends State<AnimatedTextWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _animation = Tween<double>(begin: 0, end: widget.text.length.toDouble() + 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return GradientText(
            text: widget.text.substring(0, _animation.value.toInt()),
            style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            gradient: const LinearGradient(
              colors: [Colors.grey, Colors.black, Colors.grey,], // Add your desired gradient colors
            ),
          );
        },
      ),
    );
  }
}


class GradientText extends StatelessWidget {
  final String text;
  final LinearGradient gradient;
  final TextStyle style;

  const GradientText({
    super.key,
    required this.text,
    required this.gradient,
    this.style = const TextStyle(),
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) {
        return gradient.createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
      },
      child: Text(
        text,
        style: style.copyWith(color: Colors.white), // Set text color to white
      ),
    );
  }
}