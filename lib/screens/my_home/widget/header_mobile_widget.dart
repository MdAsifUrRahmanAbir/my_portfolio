import 'package:flutter/material.dart';

import '../../../constants/custom_style.dart';
import '../../../widget/button_widgets/custom_icon_button.dart';
import '../../../widget/side_logo_widget.dart';

class HeaderMobileWidget extends StatelessWidget {
  const HeaderMobileWidget(
      {super.key, required this.onLogoTap, required this.onMenuTap});

  final VoidCallback onLogoTap, onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          SideLogoWidget(onTap: onLogoTap),
          const Spacer(),
          Container(
              padding: const EdgeInsets.all(10),
              decoration: CustomStyle.primaryLinearGradiant,
              child: CustomIconButton(onTap: onMenuTap, icon: Icons.menu))
        ],
      ),
    );
  }
}
