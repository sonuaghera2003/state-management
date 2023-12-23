import 'package:flutter/material.dart';

class BottomBarRounting extends StatefulWidget {
  const BottomBarRounting({super.key});

  @override
  State<BottomBarRounting> createState() => _BottomBarRountingState();
}

class _BottomBarRountingState extends State<BottomBarRounting> {
  int selectIndex = 0;

  List<Widget> pageList = [
    Container(
      color: Colors.redAccent,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.lightBlue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: pageList[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        selectedItemColor: Colors.redAccent,
        onTap: (value) {
          print("value - $value");
          selectIndex = value;
          setState(() {});
          print("selectIndex - $selectIndex");
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Customore"),
          BottomNavigationBarItem(icon: Icon(Icons.add_card), label: "Card"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: "Balance"),
        ],
      ),
    );
  }
}
