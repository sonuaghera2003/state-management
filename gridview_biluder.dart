import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  const GridViewDemo({super.key});

  @override
  State<GridViewDemo> createState() => _GridViewDemoState();
}

class _GridViewDemoState extends State<GridViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 10,
      scrollDirection: Axis.horizontal,
      /*  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 2),*/
        gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
           maxCrossAxisExtent: 300,crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio:2,
          // mainAxisExtent: 200
        ),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: Text("${index}"),
          );
        },
      ),
    );
  }
}
