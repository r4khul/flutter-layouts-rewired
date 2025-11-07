import 'package:flutter/material.dart';
import 'package:layouts_practice/apps/mount-app/constants/theme_color.dart';
import 'package:layouts_practice/apps/mount-app/screens/home_screen.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>  HomeScreen()));
    });

    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.terrain, size: 80, color: Colors.white),
          Container(
            margin: EdgeInsets.only(left: 190, right: 190),
            height: 50,
            width: 40,
            child: CircularProgressIndicator(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
