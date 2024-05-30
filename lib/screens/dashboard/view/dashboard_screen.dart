import 'package:flutter/material.dart';

import '../../../constants/size.dart';
import '../../../under_constructions_part/under_maintainance.dart';
import '../widgets/basic_info.dart';
import '../widgets/portfplio_items.dart';

class PortfolioHomePage extends StatelessWidget {
  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      print("VALUE: $constrains");
      return Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            _body(context, constrains),
            const AnimatedUnderMaintainMessage(),
          ],
        ),
      );
    });
  }

  _body(BuildContext context, BoxConstraints constrains) {
    return constrains.maxWidth < minTabWidth
        ? _buildMobileLayout(context)
        : constrains.maxWidth < minDesktopWidth
          ? _buildTabLayout(context)
          : _buildDesktopLayout(context);
  }
  
  _buildMobileLayout(BuildContext context){
    return ListView(
      children: [
        verticalSpace(100),
        const BasicInfoWidget(),
        verticalSpace(100),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          children: const [
            PortfolioItem(
              color: Colors.blue,
              icon: Icons.diamond,
              title: 'About',
            ),
            PortfolioItem(
              color: Colors.red,
              icon: Icons.flash_on,
              title: 'Services',
            ),
            PortfolioItem(
              color: Colors.orange,
              icon: Icons.contact_mail,
              title: 'Contact',
            ),
            PortfolioItem(
              color: Colors.purple,
              icon: Icons.emoji_events,
              title: 'Portfolio',
            ),
          ],
        ),
      ],
    );
  }
  
  _buildTabLayout(BuildContext context){
    return Row(
      children: [
        const Expanded(
          flex: 3,
          child: BasicInfoWidget()
        ),
        Expanded(
          flex: 2,
          child: GridView.count(
            crossAxisCount: 1,
            children: const [
              PortfolioItem(
                color: Colors.blue,
                icon: Icons.diamond,
                title: 'About',
              ),
              PortfolioItem(
                color: Colors.red,
                icon: Icons.flash_on,
                title: 'Services',
              ),
              PortfolioItem(
                color: Colors.orange,
                icon: Icons.contact_mail,
                title: 'Contact',
              ),
              PortfolioItem(
                color: Colors.purple,
                icon: Icons.emoji_events,
                title: 'Portfolio',
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  _buildDesktopLayout(BuildContext context){
    return const Row(
      children: [
        // Left side
        Expanded(
          flex: 2,
          child: BasicInfoWidget()
        ),
        // Right side
        Expanded(
          flex: 3,
          child: Column(
            // crossAxisCount: 2,
            // direction: Axis.horizontal,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: PortfolioItem( 
                        color: Colors.blue,
                        icon: Icons.diamond,
                        title: 'About',
                      ),
                    ),
                    Expanded(
                      child: PortfolioItem(
                        color: Colors.red,
                        icon: Icons.flash_on,
                        title: 'Services',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded( 
                child: Row(
                  children: [
                    Expanded(
                      child: PortfolioItem(
                        color: Colors.orange,
                        icon: Icons.contact_mail,
                        title: 'Contact',
                      ),
                    ),
                    Expanded(
                      child: PortfolioItem( 
                        color: Colors.purple,
                        icon: Icons.emoji_events,
                        title: 'Portfolio',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
