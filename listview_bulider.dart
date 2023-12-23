import 'package:flutter/material.dart';

class ListViewBuliderDemo extends StatefulWidget {
  const ListViewBuliderDemo({super.key});

  @override
  State<ListViewBuliderDemo> createState() => _ListViewBuliderDemoState();
}

class _ListViewBuliderDemoState extends State<ListViewBuliderDemo> {
  List switchList = List.generate(10, (index) => false);

  List studentList = [
    {
      "name": "Jay",
      "std": "10th",
      "photo": "https://m.media-amazon.com/images/I/618fpS1lonL._SX522_.jpg"
    },
    {
      "name": "Sohil",
      "std": "10th",
      "photo":
          "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg"
    },
    {
      "name": "Jay",
      "std": "10th",
      "photo": "https://m.media-amazon.com/images/I/618fpS1lonL._SX522_.jpg"
    },
    {
      "name": "Sohil",
      "std": "10th",
      "photo":
          "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        itemCount: studentList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              print("*-*--*- ${studentList[index]}");
            },
            child: Container(
              child: Row(
                children: [
                  Image.network(
                    "${studentList[index]['photo']}",
                    height: 100,
                    width: 100,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${studentList[index]['name']}"),
                      Text("${studentList[index]['std']}"),
                      Text("${studentList[index]['std']}"),
                      Text("${studentList[index]['std']}"),
                      Text("${studentList[index]['std']}"),
                      Text("${studentList[index]['std']}"),
                      Text("${studentList[index]['std']}"),
                      Text("${studentList[index]['std']}",style: TextStyle(decoration: TextDecoration.lineThrough)),
                    ],
                  ))
                ],
              ),
            ),
          );
          //   Checkbox(
          //   value: switchList[index],
          //   onChanged: (value) {
          //     print("value $value");
          //     switchList[index] = value!;
          //     setState(() {});
          //   },
          // );
        },
      ),
    );
  }
}
