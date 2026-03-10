import 'package:flutter/material.dart';
import 'package:test_app/widgets/stack_widget.dart';

class StackCustomwidget extends StatelessWidget {
  const StackCustomwidget({super.key});

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
        title: Text("StackCustomwidget..."),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(color: Colors.red, height: 200, width: 200),
                    Positioned(
                      top: 25,
                      left: 25,
                      child: Container(
                        color: Colors.blue,
                        height: 150,
                        width: 150,
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 50,
                      child: Container(
                        color: Colors.green,
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Image.asset(
                      "assets/pexels-andrejcook-131723.jpg",
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green,
                          ),
                          child: Text(
                            "Bext Deal",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_sharp, color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       StactWidgets(
                //         image: 'assets/pexels-andrejcook-131723.jpg',
                //         city: "Cox'sBazar",
                //         rate: '3.8',
                //       ),
                //       StactWidgets(
                //         image: 'assets/pexels-andrejcook-131723.jpg',
                //         city: "Cox'sBazar",
                //         rate: '3.8',
                //       ),
                //       StactWidgets(
                //         image: 'assets/pexels-andrejcook-131723.jpg',
                //         city: "Cox'sBazar",
                //         rate: '3.8',
                //       ),
                //     ],
                //   ),
                // ),
                StactWidgets(
                  image: 'assets/pexels-andrejcook-131723.jpg',
                  city: "Cox'sBazar",
                  rate: '3.8',
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Image.asset(
                      "assets/pexels-andrejcook-131723.jpg",
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      bottom: 10,
                      left: 200,

                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/ui_conponent');
                        },
                        child: Text('Book Now'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
