import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/size.dart';

import '../widget/button_widgets/social_media_button.dart';
import 'introduction_widget.dart';
import 'under_maintainance.dart';

class UnderConstructionScreen extends StatefulWidget {
  const UnderConstructionScreen({super.key});

  @override
  State<UnderConstructionScreen> createState() =>
      _UnderConstructionScreenState();
}

class _UnderConstructionScreenState extends State<UnderConstructionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3), // Adjust duration as needed
    )..repeat(reverse: true); // Repeats the animation indefinitely

    _colorAnimation = ColorTween(
      begin: Colors.blue, // Initial color
      end: Colors.deepPurple, // Final color
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  _colorAnimation.value ?? Colors.blue,
                  Colors.white, // You can adjust additional colors here
                ],
              ),
            ),
            child: Column(
              children: [
                const AnimatedUnderMaintainMessage(),
                Expanded(
                  child: ListView(
                    children: [
                      SizedBox(200)
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const IntroductionWidget(),
                            horizontalSpace(50),
                            Image.asset(
                              'assets/image/super_men.png',
                              width: 300,
                              height: 500,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialMediaButton(
                              icon: Icons.whatshot,
                              link: 'https://www.linkedin.com/in/md-asif-ur-rahman-abir-3ab156159/',
                              color: Color(0xFF0077B5),
                            ),
                            SocialMediaButton(
                              icon: Icons.public,
                              link: 'https://github.com/AbirAppDevs',
                              color: Color(0xFF333333),
                            ),
                            SocialMediaButton(
                              icon: Icons.public,
                              link: 'https://github.com/MdAsifUrRahmanAbir',
                              color: Color(0xFF25D366),
                            ),
                            SocialMediaButton(
                              icon: Icons.facebook,
                              link: 'https://www.facebook.com/abir15.10845/',
                              color: Color(0xFF3b5998),
                            ),
                          ],
                        ),
                      )
                    ]
                  )
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
