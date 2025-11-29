import 'package:flutter/material.dart';
import 'package:maanicare_test/services/utils.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: const Color(0xFFE9E4DE),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Wrap(
            // runAlignment: WrapAlignment.center,
            alignment: Utilities.isWeb(context)
                ? WrapAlignment.spaceBetween
                : WrapAlignment.center,
            // crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                'NEW COLLECTION LAUNCH ON 03 OCT  → NOTIFY ME',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                'schedule Your free Design Consultation'.toUpperCase(),
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            spacing: 60,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              if (!Utilities.isWeb(context))
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu, size: 22),
                ),
              Spacer(),
              if (Utilities.isWeb(context)) Drawer(axis: Axis.horizontal),

              Row(
                spacing: 30,
                children: [
                  Icon(Icons.person_pin, size: 22),
                  Icon(Icons.search, size: 22),
                  Icon(Icons.shopping_bag_outlined, size: 22),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Drawer extends StatelessWidget {
  final Axis axis;
  const Drawer({super.key, required this.axis});

  @override
  Widget build(BuildContext context) {
    return axis == Axis.horizontal
        ? Row(
            spacing: Utilities.isWeb(context) ? 60 : 10,
            // shrinkWrap: true,
            // scrollDirection: axis,
            // physics: NeverScrollableScrollPhysics(),
            children:
                [
                  "lighting",
                  "mirrors",
                  "kitchen & dinning",
                  "more",
                  "shop all",
                ].map((e) {
                  return InkWell(
                    onTap: () {},
                    child: Text(
                      e.toUpperCase(),
                      style: TextStyle(fontSize: 12),
                    ),
                  );
                }).toList(),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            child: Column(
              spacing: 30,
              children: [
                Icon(
                  Icons.logo_dev,
                  color: Theme.of(context).primaryColor,
                  size: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: Utilities.isWeb(context) ? 60 : 10,
                  // shrinkWrap: true,
                  // scrollDirection: axis,
                  // physics: NeverScrollableScrollPhysics(),
                  children:
                      [
                        "lighting",
                        "mirrors",
                        "kitchen & dinning",
                        "more",
                        "shop all",
                      ].map((e) {
                        return InkWell(
                          onTap: () {},
                          child: Text(
                            e.toUpperCase(),
                            style: TextStyle(fontSize: 12),
                          ),
                        );
                      }).toList(),
                ),
              ],
            ),
          );
  }
}
