import 'package:flutter/material.dart';

class AnimatedClass extends StatefulWidget {
  const AnimatedClass({super.key});

  @override
  State<AnimatedClass> createState() => _AnimatedClassState();
}

class _AnimatedClassState extends State<AnimatedClass> {
  bool selected = false;
  bool showMessage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Today for Animated Class...")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 3),
                height: selected ? 100 : 150,
                width: selected ? 100 : 150,
                decoration: BoxDecoration(
                  color: selected ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                height: selected ? 100 : 150,
                width: selected ? 100 : 150,
                decoration: BoxDecoration(
                  color: selected ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Divider(thickness: 3),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  showMessage = !showMessage;
                });
              },
              child: Text('Added To Card'),
            ),
            AnimatedOpacity(
              opacity: showMessage ? 1 : 0,
              duration: Duration(seconds: 1),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Added To text', style: TextStyle(fontSize: 25)),
                ),
              ),
            ),

            SizedBox(height: 20),
            AnimatedAlign(
              alignment: showMessage
                  ? Alignment.topRight
                  : Alignment.centerLeft,
              duration: Duration(seconds: 2),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(
                  'assets/pexels-andrejcook-131723.jpg',
                ),
              ),
            ),

            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        showMessage = !showMessage;
                      });
                    },
                    child: Text('Toggle Button'),
                  ),
                  AnimatedPositioned(
                    duration: Duration(seconds: 2),
                    bottom: showMessage ? 0 : -120,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 120,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          "Test",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
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
