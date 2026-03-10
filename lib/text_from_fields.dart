import 'package:flutter/material.dart';
import 'package:test_app/mediaQuery_design.dart';
import 'package:test_app/text_filed.dart';

class TextFromFields extends StatefulWidget {
  const TextFromFields({super.key});

  @override
  State<TextFromFields> createState() => _TextFromFieldsState();
}

class _TextFromFieldsState extends State<TextFromFields> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("TextFromFields")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),

          child: Form(
            key: formKey,

            child: Column(
              children: [
                SizedBox(height: 20),

                SizedBox(height: 20),
                Image.asset(
                  height: 200,
                  width: 200,
                  "assets/pexels-andrejcook-131723.jpg",
                ),
                SizedBox(height: 20),
                Text(
                  "Login Here...",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(hintText: 'Phone Number'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter phone number";
                    } else if (value.length != 11) {
                      return 'Enter valid phone number';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(hintText: 'Password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please Enter password";
                    } else if (value.length < 6) {
                      return 'Password must be 6 characters.';
                    } else {
                      return null;
                    }
                  },
                ),

                SizedBox(height: 20),
                SizedBox(
                  height: 25,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Login Successfull.')),
                        );
                      }
                      Navigator.pushNamed(context, '/mediaQuery_design');
                    },
                    child: Text("Submit"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
