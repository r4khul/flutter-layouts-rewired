import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/constants/theme_color.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://avatars.githubusercontent.com/u/118678415?v=1",
            ),
            radius: 30,
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Roman",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Good Morning", style: TextStyle(color: mainColor)),
            ],
          ),
        ],
      ),
    );
  }
}
