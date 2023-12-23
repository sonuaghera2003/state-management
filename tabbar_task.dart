import 'package:flutter/material.dart';

class TabBarTask extends StatefulWidget {
  const TabBarTask({super.key});

  @override
  State<TabBarTask> createState() => _TabBarTaskState();
}

class _TabBarTaskState extends State<TabBarTask> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: CircleAvatar(
            radius: 10,
            child: Image.asset(
              "assets/logo.png",
            ),
          ),
          actions: const [
            Icon(
              Icons.search_rounded,
              color: Colors.white,
            )
          ],
          title: const Text(
            // textAlign: TextAlign.center,
            "App Bar",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            const TabBar(unselectedLabelColor: Colors.black12,labelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text("Following"),
                ),
                Tab(
                  child: Text("Popular"),
                ),
                Tab(
                  child: Text("Recent"),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Container(
                      color: Colors.redAccent,
                    ),
                  ),
                  Center(
                    child: Container(
                      color: Colors.cyan,
                    ),
                  ),
                  Center(
                    child: Container(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
