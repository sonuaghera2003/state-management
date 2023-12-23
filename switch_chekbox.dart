import 'package:flutter/material.dart';

class SwitchChekBoxDemo extends StatefulWidget {
  const SwitchChekBoxDemo({super.key});

  @override
  State<SwitchChekBoxDemo> createState() => _SwitchChekBoxDemoState();
}

class _SwitchChekBoxDemoState extends State<SwitchChekBoxDemo> {
  bool myChekBox = false;
  bool mySwitch = false;
  int groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 5; i++)
              Checkbox(
                value: myChekBox,
                onChanged: (value) {
                  print("value $value");
                  myChekBox = value!;
                  setState(() {});
                },
              ),
            Switch(
              value: mySwitch,
              onChanged: (value) {
                print("value $value");
                mySwitch = value;
                setState(() {});
              },
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: groupValue,
                  onChanged: (value) {
                    groupValue = value!;
                    setState(() {});
                  },
                ),
                Radio(
                  value: 2,
                  groupValue: groupValue,
                  onChanged: (value) {
                    groupValue = value!;
                    setState(() {});
                  },
                ),
                Radio(
                  value: 3,
                  groupValue: groupValue,
                  onChanged: (value) {
                    groupValue = value!;
                    setState(() {});
                  },
                ),
                Radio(
                  value: 4,
                  groupValue: groupValue,
                  onChanged: (value) {
                    groupValue = value!;
                    setState(() {});
                  },
                ),
              ],
            ),
            RadioListTile(value: 1, groupValue: groupValue, onChanged: (value) {
              print("");
            },title: Text("Option 1")),
          ],
        ),
      ),
    );
  }
}
