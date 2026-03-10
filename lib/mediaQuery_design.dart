import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MediaqueryDesign extends StatelessWidget {
  const MediaqueryDesign({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    final Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Responsive Design Media Query'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 150.h, width: 300.w, color: Colors.blue),
            Text("Responsize Text", style: TextStyle(fontSize: 10.sp)),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/list_view');
              },
              child: Container(height: 150.h, width: 300.w, color: Colors.blue),
            ),
            Text("Responsize Text 02", style: TextStyle(fontSize: 10.sp)),
          ],
        ),
      ),
    );
  }
}
