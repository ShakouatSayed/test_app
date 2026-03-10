import 'package:flutter/material.dart';
import 'package:test_app/grid_view.dart';
import 'package:test_app/mediaQuery_design.dart';

class ListViews extends StatelessWidget {
  const ListViews({super.key});

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
        title: Text('List View Class'),
      ),
      // body: ListView(
      //   children: [
      //     Card(
      //       color: Colors.green,
      //       child: ListTile(
      //         title: Text('Shakibul Hassan'),
      //         subtitle: Text('01867161312'),
      //         leading: Icon(Icons.call),
      //         trailing: Icon(Icons.delete, color: Colors.red),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.green,
      //       child: ListTile(
      //         title: Text('Shakibul Hassan'),
      //         subtitle: Text('01867161312'),
      //         leading: Icon(Icons.call),
      //         trailing: Icon(Icons.delete, color: Colors.red),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.green,
      //       child: ListTile(
      //         title: Text('Shakibul Hassan'),
      //         subtitle: Text('01867161312'),
      //         leading: Icon(Icons.call),
      //         trailing: Icon(Icons.delete, color: Colors.red),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.green,
      //       child: ListTile(
      //         title: Text('Shakibul Hassan'),
      //         subtitle: Text('01867161312'),
      //         leading: Icon(Icons.call),
      //         trailing: Icon(Icons.delete, color: Colors.red),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.green,
      //       child: ListTile(
      //         title: Text('Shakibul Hassan'),
      //         subtitle: Text('01867161312'),
      //         leading: Icon(Icons.call),
      //         trailing: Icon(Icons.delete, color: Colors.red),
      //       ),
      //     ),
      //     Card(
      //       color: Colors.green,
      //       child: ListTile(
      //         title: Text('Shakibul Hassan'),
      //         subtitle: Text('01867161312'),
      //         leading: Icon(Icons.call),
      //         trailing: Icon(Icons.delete, color: Colors.red),
      //       ),
      //     ),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/gird_view');
            },
            child: Card(
              color: Colors.green,
              child: ListTile(
                title: Text('Shakibul Hassan'),
                subtitle: Text('01867161312'),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.delete, color: Colors.red),
              ),
            ),
          );
        },
      ),
    );
  }
}
