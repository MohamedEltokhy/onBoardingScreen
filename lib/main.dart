import 'package:flutter/material.dart';
import 'package:onboardingscreen/UI/HomePage.dart';
import 'package:onboardingscreen/UI/SplashScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'UI/OnBoardingScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp( showHome:showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;

  const MyApp({Key? key, required this.showHome}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: showHome ? SplashScreen() : OnBoardingScreen(),
    );
  }
}

