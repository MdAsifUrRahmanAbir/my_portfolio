import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/proccess.dart';


class IntroductionWidget extends StatefulWidget {
  const IntroductionWidget({super.key});

  @override
  IntroductionWidgetState createState() => IntroductionWidgetState();
}

class IntroductionWidgetState extends State<IntroductionWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            children: [
              Text(
                'Name: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
             
              Text(
                'Md Asif Ur Rahman Abir',
                style: TextStyle(fontSize: 18),
              ),
            ]
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Text(
                'Currently Job: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              
              Text(
                'AppDevs Ltd',
                style: TextStyle(fontSize: 18),
              ),
            ]
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Text(
                'Job Experience: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              
              Text(
                '1.5 years',
                style: TextStyle(fontSize: 18),
              ),
            ]
          ),
          const SizedBox(height: 20),

          const Row(
            children: [
              Text(
                'Role: ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              Text(
                'Flutter Developer',
                style: TextStyle(fontSize: 18),
              ),
              //const AnimatedTextWidget(text: 'Flutter Developer',),
            ]
          ),

          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              launchWhatsAppProcess('01877348044');
            },
            child: const Text(
              'WhatsApp: 01877348044 (Click to open WhatsApp web)',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.w900
              ),
            ),
          ),
        ],
      ),
    );
  }
}
