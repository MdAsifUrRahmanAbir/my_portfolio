
import 'package:flutter/material.dart';

import '../../../constants/proccess.dart';
import '../../../widget/button_widgets/svg_icon.dart';

class BasicInfoWidget extends StatelessWidget {
  const BasicInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/image/super_men.png",
            height: 300,
            width: 250,
          ),
          const Text(
            'Md Asif Ur Rahman Abir',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Innovative Cross-Platform Apps with Flutter Magic',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SVGIconWidget(
                path: "assets/icon/github.svg",
                tooltip: "Github",
                splashColor: Colors.yellow,
                onTap: () async{
                  await launchUrlProcess(Uri.parse("https://github.com/MdAsifUrRahmanAbir"));
                },
              ),

              SVGIconWidget(
                path: "assets/icon/linkedin.svg",
                tooltip: "linkedin",
                splashColor: Colors.green,
                onTap: () async{
                  await launchUrlProcess(Uri.parse("https://www.linkedin.com/in/md-asif-ur-rahman-abir-3ab156159/"));
                },
              ),

              SVGIconWidget(
                path: "assets/icon/facebook.svg",
                tooltip: "Facebook",
                splashColor: Colors.deepOrange,
                onTap: () async{
                  await launchUrlProcess(Uri.parse("https://www.facebook.com/abir15.10845/"));
                },
              ),

              SVGIconWidget(
                path: "assets/icon/whatsapp.svg",
                tooltip: "Whatsapp",
                splashColor: Colors.deepPurpleAccent,
                onTap: () async{
                  await launchWhatsAppProcess("01877348044");
                },
              ),

            ],
          ),
        ],
      ),
    );
  }
}
