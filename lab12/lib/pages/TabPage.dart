import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final CoffeeMachine coffeeMachine = CoffeeMachine(Resources(500, 500, 500, 0));

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Coffee Machine',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.lightGreen,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.local_cafe, color: Colors.white),
              ),
              Tab(
                icon: Icon(Icons.add, color: Colors.white),
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            CoffeePage(coffeeMachine),
            AddResourcesPage(coffeeMachine),
          ],
        ),
      ),
    );
  }
}
