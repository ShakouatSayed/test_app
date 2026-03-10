import 'package:flutter/material.dart';

class GridViews extends StatelessWidget {
  const GridViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Grid View Lesson'),
      ),

      // body: Padding(
      //   padding: const EdgeInsets.all(10),
      //   child: GridView.count(
      //     crossAxisCount: 4,
      //     crossAxisSpacing: 5,
      //     mainAxisSpacing: 5,
      //     children: [
      //       Container(color: Colors.blue),
      //       Container(color: Colors.green),
      //       Container(color: Colors.yellow),
      //       Container(color: Colors.red),
      //       Container(color: Colors.orange),
      //       Container(color: Colors.amber),
      //     ],
      //   ),
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/stack_customwidget');
            },
            child: Card(
              color: Colors.green.shade600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.call), Text('Cash In...')],
              ),
            ),
          );
        },
      ),
    );
  }
}
