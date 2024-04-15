import 'package:flutter/material.dart';

import '../../../widget/button_widgets/custom_text_button_widget.dart';
import '../controller/my_home_controller.dart';
import '../../../widget/side_logo_widget.dart';
import '../../../constants/colors.dart';


class HeaderWindowWidget extends StatelessWidget {
  const HeaderWindowWidget(
      {super.key, required this.controller, required this.onLogoTap});

  final MyHomeController controller;
  final VoidCallback onLogoTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Colors.transparent, CustomColor.primaryBGDarkColor]),
          borderRadius: BorderRadius.circular(100)),
      child: Row(
        children: [
          SideLogoWidget(onTap: onLogoTap),
          const Spacer(),
          for (int i = 0; i < controller.navTitles.length; i++)
            CustomTextButtonWidget(
              onTap: (){

              },
              text: controller.navTitles[i]["title"],
            ),
        ],
      ),
    );
  }
}