import 'package:flutter/material.dart';

class AnimatedUnderMaintainMessage extends StatefulWidget {
  const AnimatedUnderMaintainMessage({super.key});

  @override
  AnimatedUnderMaintainMessageState createState() =>
      AnimatedUnderMaintainMessageState();
}

class AnimatedUnderMaintainMessageState
    extends State<AnimatedUnderMaintainMessage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true); // Repeats the animation indefinitely

    _animation = Tween<double>(begin: 1.0, end: 1.2).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: _animation.value,
          child: _buildUnderConstructionMessage(),
        );
      },
    );
  }

  Widget _buildUnderConstructionMessage() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.yellow, // Background color
        borderRadius: BorderRadius.circular(8.0), // Rounded corners
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.build, // Icon representing construction
            color: Colors.black,
          ),
          SizedBox(width: 8.0),
          Text(
            'This site is under construction',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
