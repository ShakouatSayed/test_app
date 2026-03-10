import 'package:flutter/material.dart';
import 'package:test_app/navigator_learn/page02.dart';

class Page01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 01')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page 01'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/page02');
              },
              child: Text('Page 02'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text('Page 03')),
          ],
        ),
      ),
    );
  }
}
