import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/constants/theme_color.dart';
import 'package:layouts_practice/apps/mount-app/models/mount.dart';

class DetailsBottom extends StatelessWidget {
  final MountModel item;
  const DetailsBottom({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _ratingContainer(title: 'Rating', content: item.rating),
                _ratingContainer(title: 'Price', content: item.pricing),
                _ratingContainer(title: 'Open', content: item.open),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About ${item.name}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 18),
                  Text(item.description, textAlign: TextAlign.justify),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              spacing: 10,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: mainColor, width: 2),
                    ),
                    child: Text("Book Now",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ),
                Container(
                  child: Icon(Icons.bookmark,size: 20,color: mainColor,),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: mainColor, width: 2),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


Widget _ratingContainer({required String title, required String content}) {
  return Container(
    padding: EdgeInsets.all(20),
    width: 95,
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color.fromARGB(48, 158, 158, 158),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(14),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        Text(
          content,
          style: TextStyle(
            color: mainColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}
