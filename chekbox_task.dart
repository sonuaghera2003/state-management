import 'dart:developer';

import 'package:flutter/material.dart';

class ChekBoxTask extends StatefulWidget {
  const ChekBoxTask({super.key});

  @override
  State<ChekBoxTask> createState() => _ChekBoxTaskState();
}

class _ChekBoxTaskState extends State<ChekBoxTask> {
  bool myChekBox = false;
  bool mySwitchBox = false;

  List switchList = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      for (int i = 0; i < switchList.length; i++)
                        Checkbox(
                          value: switchList[i],
                          onChanged: (value) {
                            log("value $value");
                            switchList[i] = value!;
                            log("switchList $switchList");
                            setState(() {});
                          },
                        )
                    ],
                  ),
                  color: Colors.amber,
                ),
                Container(
                  child: Column(
                    children: [
                      for (int a = 0; a < 5; a++)
                        Switch(
                          value: mySwitchBox,
                          onChanged: (value) {
                            log("value $value");
                            mySwitchBox = value;
                            setState(() {});
                          },
                        ),
                    ],
                  ),
                  color: Colors.red,
                ),

                Container(
                  color: Colors.cyan,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
