import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/constants/mock_category_data.dart';
import 'package:layouts_practice/apps/mount-app/constants/theme_color.dart';

class AppCategoryList extends StatelessWidget {
  const AppCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See More",
                  style: TextStyle(fontSize: 14, color: mainColor),
                ),
              ],
            ),
          ),
          Container(
            height: 130,
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return Container(
                  width: 100,
                  margin: EdgeInsets.only(right: 6, left: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(48, 158, 158, 158), width: 2),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(category.icon, color: mainColor, size: 20),
                      Text(
                        category.category,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
