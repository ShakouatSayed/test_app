import 'package:flutter/material.dart';

class StactWidgets extends StatelessWidget {
  final String image, city, rate;
  const StactWidgets({
    super.key,
    required this.image,
    required this.city,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
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
                city,
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            ),
            Text(
              "*** $rate",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
