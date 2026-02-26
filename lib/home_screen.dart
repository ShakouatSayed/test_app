import 'package:flutter/material.dart';
import 'package:test_app/text_filed.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First App..."), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TextFileds()),
                );
              },
              child: Text("Submit"),
            ),
            SizedBox(width: 50),
          ],
        ),
      ),
    );
  }
}
