import 'package:flutter/material.dart';
import 'package:test_app/navigator_learn/page03.dart';

class Page02 extends StatelessWidget {
  final String name;
  const Page02({required this.name, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 02')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name, style: TextStyle(fontSize: 25)),
            Text('Page 02'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page03');
              },
              child: Text('Page 03'),
            ),
          ],
        ),
      ),
    );
  }
}
