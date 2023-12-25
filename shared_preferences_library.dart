import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedDemo extends StatefulWidget {
  const SharedDemo({super.key});

  @override
  State<SharedDemo> createState() => _SharedDemoState();
}

class _SharedDemoState extends State<SharedDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                final String? name = prefs.getString('Name');
                print("My nmae = $name");
              },
              child: Text("Read")),
          ElevatedButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                prefs.setString('Name', "Raj");
              },
              child: Text("write")),
          ElevatedButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                prefs.clear();
              },
              child: Text("Delete"))
        ],
      ),
    );
  }
}
