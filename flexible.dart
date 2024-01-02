import 'package:flutter/material.dart';

class FlexibleDemo extends StatefulWidget {
  const FlexibleDemo({super.key});

  @override
  State<FlexibleDemo> createState() => _FlexibleDemoState();
}

class _FlexibleDemoState extends State<FlexibleDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 200,
                child: FittedBox(
                  child: Container(
                      color: Colors.green,
                      child: Text("Hello sdsiochodsco ")),
                ),
              ),
              Text("New")
            ],
          )
        ],
      ),
    );
  }
}
