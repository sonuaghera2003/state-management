import 'package:flutter/material.dart';


class MyAppDemo extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppDemo> {
  // List of items with their corresponding checkbox state
  List<CheckboxModel> checkboxItems = [
    CheckboxModel(label: '', isChecked: false),
    CheckboxModel(label: '', isChecked: false),
    CheckboxModel(label: '', isChecked: false),

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              for (var checkboxItemname in checkboxItems)
                Checkbox(
                  // title: Text(checkboxItem.label),
                  value: checkboxItemname.isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      checkboxItemname.isChecked = value ?? false;
                    });
                  },
                ),
              // SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     // Perform an action based on the selected checkboxes
              //     List<String> selectedOptions = checkboxItems
              //         .where((item) => item.isChecked)
              //         .map((item) => item.label)
              //         .toList();
              //     print('Selected options: $selectedOptions');
              //   },
              //   child: Text('Get Selected Options'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckboxModel {
  final String label;
  bool isChecked;

  CheckboxModel({required this.label, required this.isChecked});
}