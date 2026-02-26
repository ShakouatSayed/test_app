import 'package:flutter/material.dart';
import 'package:test_app/home_screen.dart';
import 'package:test_app/text_from_fields.dart';

class TextFileds extends StatelessWidget {
  const TextFileds({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TextFields & Container"),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  helperText: "Phone Number",
                  hintText: "Enter Phone Number",
                  labelText: 'Phone Number',
                  helperStyle: TextStyle(fontSize: 10),
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.check),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                autofocus: true,
                controller: passwordController,
                decoration: InputDecoration(
                  helperText: "Password",
                  hintText: "Enter Password",
                  labelText: 'Password',
                  helperStyle: TextStyle(fontSize: 10),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              SizedBox(
                height: 30,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    if (phoneController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Plase Enter phone Number ')),
                      );
                    } else if (phoneController.text.length != 11) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Plase enter valid Phone number.'),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(phoneController.text)),
                      );
                    }
                  },
                  child: Text("Submit"),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => TextFromFields()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 5, color: Colors.black),
                    boxShadow: [
                      BoxShadow(color: Colors.black54, offset: Offset(4, 10)),
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(-10, -10),
                      ),
                    ],
                  ),
                  height: 150,
                  width: 200,

                  child: Text(
                    "This a Container...",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
