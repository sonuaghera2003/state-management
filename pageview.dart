import 'package:flutter/material.dart';

class PageviewDemo extends StatefulWidget {
  const PageviewDemo({super.key});

  @override
  State<PageviewDemo> createState() => _PageviewDemoState();
}

class _PageviewDemoState extends State<PageviewDemo> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: controller,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            color: Colors.green,
            child: Center(child: Text(" ₹ $index")),
          );
        },
      ),
      bottomNavigationBar: Row(
        children: [
          ElevatedButton(
              onPressed: () {
                controller.previousPage(
                    duration: Duration(seconds: 2), curve: Curves.bounceInOut);
              },
              child: Text("prv")),
          ElevatedButton(onPressed: () {
            controller.nextPage(
                duration: Duration(seconds: 1), curve: Curves.easeInOutCubicEmphasized);
          }, child: Text("next")),
        ],
      ),
    );
  }
}
