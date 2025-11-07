import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/constants/theme_color.dart';

class AppSearch extends StatelessWidget {
  const AppSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Discover",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
          ),
          SizedBox(height: 15),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    height: 45,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 20),
                          Text("Search"),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width:10 ,),
                Container(child: Icon(Icons.filter_alt), color: mainColor, width: 45,height: 45,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
