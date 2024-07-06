import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todo/screens/home_Screen.dart';
import 'package:todo/widgets/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    // TODO: implement initState
    setState(() {
      Timer(Duration(seconds: 3), (){
         Navigator.pushReplacement<void, void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const HomeScreen(),
    ),
  );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: PurpleColor,
            child: Column(
              children: [
                Text("Manage Your",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Text("Daily To Do",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Image.asset("Assets/images/Splash Screen.png"),
                Padding(padding: EdgeInsets.only(bottom:20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("Assets/images/Splash Recatangle.png",color: Yellow1,),
                    Padding(padding: EdgeInsets.only(right: 30)),
                    Image.asset("Assets/images/Splash Recatangle.png",color: Yellow2,),
                    Padding(padding: EdgeInsets.only(right: 30)),
                    Image.asset("Assets/images/Splash Recatangle.png",color: Yellow3,),
                  ],
                ),
                Text("Without much worry just manage",style: TextStyle(fontSize: 20),),
                Text("things as easy as piece of cake",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}