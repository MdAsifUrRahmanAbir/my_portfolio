import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/size.dart';
import '../../../language/strings.dart';
import '../../../widget/button_widgets/primary_button_widget.dart';
import '../../../widget/text_wdgets/primary_text_widget.dart';
import '../controller/my_home_controller.dart';
import '../widget/custom_drawer_widget.dart';
import '../widget/header_mobile_widget.dart';
import '../widget/header_window_widget.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final controller = Get.put(MyHomeController());
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer: constrains.maxWidth >= minDesktopWidth
            ? null
            : CustomDrawerWidget(controller: controller),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Header
            if (constrains.maxWidth >= minDesktopWidth)
              HeaderWindowWidget(
                controller: controller,
                onLogoTap: () {},
              )
            else
              HeaderMobileWidget(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            //Main
            Container(
              width: double.maxFinite,
              height: 500,
              color: Colors.blueGrey,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: crossStart,
                    children: [
                      const PrimaryTextWidget(Strings.hi),
                      const PrimaryTextWidget(Strings.introduction),
                      const PrimaryTextWidget(Strings.skillTitle),
                      verticalSpace(20),
                      // PrimaryButtonWidget(onPressed: (){}, title: (Strings.getInTouch),)
                    ],
                  ),
                ],
              ),
            ),

            //SKILLS
            Container(
              width: double.maxFinite,
              height: 500,
              // color: Colors.blueGrey,
            ),

            //PROJECTS
            Container(
              width: double.maxFinite,
              height: 500,
              color: Colors.blueGrey,
            ),

            //CONTACTS
            Container(
              width: double.maxFinite,
              height: 500,
              // color: Colors.blueGrey,
            ),

            //FOOTER
            Container(
              width: double.maxFinite,
              height: 500,
              color: Colors.blueGrey,
            ),
          ],
        ),
      );
    });
  }
}
