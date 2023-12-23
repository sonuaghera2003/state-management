import 'package:flutter/material.dart';


class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tabs Demo'),
          ),
          body: Column(
            children: [
              const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car,color: Colors.red,)),
                  Tab(icon: Icon(Icons.directions_transit,color: Colors.red,)),
                  Tab(icon: Icon(Icons.directions_bike,color: Colors.red,)),
                ],
              ),
              Expanded(
                child: const TabBarView(
                  children: [
                    Text("adsaygd"),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_bike),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}