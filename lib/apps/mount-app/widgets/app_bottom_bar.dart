import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/constants/mock_bottom_bar_data.dart';
import 'package:layouts_practice/apps/mount-app/constants/theme_color.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(78, 158, 158, 158),
            spreadRadius: 2,
            blurRadius: 3
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(barItems.length, (index) {
          final item = barItems[index];
          final Widget renderBottomItem;

          if (item.isSelected) {
            renderBottomItem = Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 14),
              decoration: BoxDecoration(
                color: mainColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.home, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    item.label,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          } else {
            renderBottomItem = Icon(item.icon, color: Colors.grey);
          }

          return renderBottomItem;
        }),
      ),
    );
  }
}
