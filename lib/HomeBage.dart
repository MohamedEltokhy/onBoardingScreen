import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async{
                final prefs =await SharedPreferences.getInstance();
                prefs.setBool('showHome', false);
              },
              icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}
