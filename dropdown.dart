import 'package:flutter/material.dart';

class DropDownExample extends StatefulWidget {
  const DropDownExample({super.key});

  @override
  State<DropDownExample> createState() => _DropDownState();
}

class _DropDownState extends State<DropDownExample> {
  String? selectItem;
  String? selectItem2;

  List countryList = ["In", "US", "Cn", "Ru"];
  List countryList2 = [
    {"country": "In", "name": "India"},
    {"country": "US", "name": "Amarica"},
    {"country": "Cn", "name": "China"},
    {"country": "Ru", "name": "Russia"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
              value: selectItem,
              items: countryList
                  .map(
                    (e) => DropdownMenuItem(child: Text("$e"), value: "$e"),
                  )
                  .toList() /*[
                DropdownMenuItem(child: Text("India"), value: "IN"),
                DropdownMenuItem(
                  child: Text("US"),
                  value: "US",
                ),
                DropdownMenuItem(
                  child: Text("rasia"),
                  value: "ru",
                ),
              ]*/
              ,
              onChanged: (v) {
                print("v $v");
                selectItem = v;
                setState(() {});
              }),
          DropdownButton(
              value: selectItem2,
              items: countryList2.map((e) => DropdownMenuItem(child: Text("${e['name']}"), value: "${e['country']}"),).toList() /*[
                DropdownMenuItem(child: Text("India"), value: "IN"),
                DropdownMenuItem(
                  child: Text("US"),
                  value: "US",
                ),
                DropdownMenuItem(
                  child: Text("rasia"),
                  value: "ru",
                ),
              ]*/
              ,
              onChanged: (v) {
                print("v $v");
                selectItem2 = v;
                setState(() {});
              }),
        ],
      ),
    );
  }
}
