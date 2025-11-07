import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/constants/theme_color.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://avatars.githubusercontent.com/u/118678415?v=1",
            ),
            radius: 35,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello, Mr. X",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
              Text(
                "Good Morning",
                style: TextStyle(color: mainColor, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
