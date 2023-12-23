import 'dart:developer';

import 'package:flutter/material.dart';

class DropDownTask extends StatefulWidget {
  const DropDownTask({super.key});

  @override
  State<DropDownTask> createState() => _DropDownTaskState();
}

class _DropDownTaskState extends State<DropDownTask> {
  String? selectItem;

  List countryList = [
    "India",
    "USA",
  ];

  List countryMainList = [
    {
      "country_name": "India",
      "state": [
        {
          "state_name": "Gujarat",
          "city": ["Surat", "Navsari", "Valsad"]
        },
        {
          "state_name": "panjab",
          "city": ["Ludhiana", "Moga", "Sunam"]
        },
        {
          "state_name": "Kerla",
          "city": ["Kochi", "Kannur", "Adoor"]
        },
      ]
    },
    {
      "country_name": "USA",
      "state": [
        {
          "state_name": "Alabama",
          "city": ["Huntsville", "Opelika", "Opelika"]
        },
        {
          "state_name": "California",
          "city": ["Los Angeles", "San Diego", "San Jose"]
        },
        {
          "state_name": "Hawaii",
          "city": ["Kailua", "Lahaina", "Makaha"]
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value: countryList,
              items: countryMainList
                  .map(
                    (e) => DropdownMenuItem(
                      child: Text("${e["country_name"]}"),
                      value: "${e["state_name"]}",
                    ),
                  )
                  .toList(),
              onChanged: (v) {
                log("message - $v");
                selectItem = v as String?;
              }),
          // DropdownButton(
          //     value: selectItem,
          //     items: countryList.map(
          //       (e) => DropdownMenuItem(
          //         child: Text("${e["country_name"]}"),
          //         value: "${e["state_name"]}",
          //       ),
          //     ),
          //     onChanged: onChanged)
        ],
      ),
    );
  }
}
