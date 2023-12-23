import 'package:flutter/material.dart';

class ListviewTask extends StatefulWidget {
  const ListviewTask({super.key});

  @override
  State<ListviewTask> createState() => _ListviewTaskState();
}

class _ListviewTaskState extends State<ListviewTask> {
  List watchList = [
    {
      "Brand": "LOUIS DEVIN",
      "Details":
          "LOUIS DEVIN Silicone Strap Analog Wrist Watch for Men (Black/Blue/Red) | LD-BK054",
      "Rating": "3.9",
      "Photo": "https://m.media-amazon.com/images/I/61LO6l4zB4L._SX522_.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: watchList.length,
      itemBuilder: (context, index) {
        return Container(

          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                "${watchList[index]["Photo"]}",
                height: 100,
                width: 100,
              ),
              Material(
                child: Expanded(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("${watchList[index]["Brand"]}"),
                      Text("${watchList[index]["Details"]}"),
                      Text("${watchList[index]["Rating"]}"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
