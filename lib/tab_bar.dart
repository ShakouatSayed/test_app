import 'package:flutter/material.dart';
import 'package:test_app/navigator_learn/page01.dart';
import 'package:test_app/navigator_learn/page02.dart';
import 'package:test_app/navigator_learn/page03.dart';

class TabBars extends StatelessWidget {
  const TabBars({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(
            indicator: BoxDecoration(color: Colors.green),
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.favorite_sharp), text: 'Favorite'),
              Tab(icon: Icon(Icons.settings), text: 'Setting'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Text('Home', style: TextStyle(fontSize: 20)),
            // Text('Favarute', style: TextStyle(fontSize: 20)),
            // Text('Settings', style: TextStyle(fontSize: 20)),
            // Container(color: Colors.red),
            // Container(color: Colors.yellow),
            // Container(color: Colors.green),
            Page01(),
            Page02(name: 'Shakouat'),
            Page03(),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 42,
                      backgroundImage: AssetImage(
                        'assets/pexels-andrejcook-131723.jpg',
                      ),
                    ),
                    Text("Shakouat Hossen", style: TextStyle(fontSize: 15)),
                    Text("sayed@gmail.com", style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),

              ListTile(leading: Icon(Icons.home), title: Text("Deashboard")),
              ListTile(leading: Icon(Icons.home), title: Text("Deashboard")),
              ListTile(leading: Icon(Icons.home), title: Text("Deashboard")),
              ListTile(leading: Icon(Icons.home), title: Text("Deashboard")),
            ],
          ),
        ),
      ),
    );
  }
}
