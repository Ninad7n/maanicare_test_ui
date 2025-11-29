import 'package:flutter/material.dart' hide Drawer;
import 'package:maanicare_test/services/utils.dart';
import 'package:maanicare_test/view/home_screen/components/left_image_widget.dart';
import 'package:maanicare_test/view/home_screen/components/nav_bar.dart';

import 'package:maanicare_test/view/home_screen/components/right_data_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Utilities.isWeb(context)
          ? SizedBox.shrink()
          : ColoredBox(
              color: Colors.white,
              child: SizedBox(
                width: Utilities.width(context) / 2,
                child: Drawer(axis: Axis.vertical),
              ),
            ),
      body: Utilities.isWeb(context)
          ? SizedBox(
              width: double.infinity,
              // height: Utilities.height(context),
              child: ListView(
                shrinkWrap: true,
                children: [
                  NavBar(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      spacing: 24,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(flex: 5, child: LeftImageWidget()),
                        Expanded(flex: 6, child: RightDetailsWidget()),
                      ],
                    ),
                  ),
                  SizedBox(),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Column(
                spacing: 12,
                children: const [
                  NavBar(),
                  LeftImageWidget(),
                  RightDetailsWidget(),
                ],
              ),
            ),
    );
  }
}
