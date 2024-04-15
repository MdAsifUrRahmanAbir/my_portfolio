import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widget/button_widgets/custom_icon_button.dart';

import '../../../constants/colors.dart';
import '../controller/my_home_controller.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key, required this.controller});

  final MyHomeController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:
          CustomColor.primaryDarkScaffoldBackgroundColor.withOpacity(.5),
      child: ListView(
        children: [
          verticalSpace(5),
          ListTile(
            leading: CustomIconButton(
              onTap: () {
                Navigator.of(context).pop();
              },
              icon: Icons.arrow_back_ios,
            ),
          ),
          verticalSpace(10),
          for (int i = 0; i < controller.navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  onTap: () {},
                  leading: Icon(controller.navTitles[i]["icon"]),
                  title: Text(
                    controller.navTitles[i]["title"],
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.primaryDarkTextColor),
                  )),
            )
        ],
      ),
    );
  }
}
