import 'package:flutter/material.dart';

class DropDownDemo extends StatefulWidget {
  const DropDownDemo({super.key});

  @override
  State<DropDownDemo> createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  String? selectedValue;
  List countryList = [
    "India",
    "USA",
  ];

  List countryList1 = [
    // "gujrat ",
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

  dynamic selectCountry;

  List stateList = [];
  
  dynamic selectState;

  List cityList = [];
  dynamic selectCIty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value: selectCountry,
            items: countryMainList
                .map((e) => DropdownMenuItem(
                    child: Text(e['country_name']), value: e['state']))
                .toList(),
            onChanged: (v) {
              print("dropdown value is $v");
              // selectedValue = v.toString();
              selectCountry = v as List;
              stateList = v;
              selectState = null;
              selectCIty = null;
              setState(() {});
            },
          ),
          DropdownButton(
            value: selectState,
            items: stateList
                .map((e) => DropdownMenuItem(
                    child: Text(e['state_name']), value: e['city']))
                .toList(),
            onChanged: (v) {
              print("dropdown value is $v");
              // selectedValue = v.toString();
              selectState = v as List;
              cityList = v;
              selectCIty = null;
              setState(() {});
            },
          ),
          DropdownButton(
            value: selectCIty,
            items: cityList
                .map((e) => DropdownMenuItem(child: Text(e), value: e))
                .toList(),
            onChanged: (v) {
              print("dropdown value is $v");
              // selectedValue = v.toString();
              selectCIty = v;
              // cityList = v;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
