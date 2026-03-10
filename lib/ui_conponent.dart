import 'package:flutter/material.dart';

class UiConponent extends StatelessWidget {
  const UiConponent({super.key});

  @override
  Widget build(BuildContext context) {
    void showAlertDialoug() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          icon: Icon(Icons.settings),
          title: Text('This is title'),
          content: Text('Are you sure...?'),
          actions: [
            TextButton(onPressed: () {}, child: Text('Yes')),
            TextButton(onPressed: () {}, child: Text('No')),
          ],
        ),
      );
    }

    void showSimpleDialoug() {
      showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title: Text('This is title'),
          children: [
            SimpleDialogOption(onPressed: () {}, child: Text('Bangla')),
            SimpleDialogOption(onPressed: () {}, child: Text('Math')),
            SimpleDialogOption(onPressed: () {}, child: Text('English')),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text('Enter Your Age'),
                  SizedBox(height: 10),
                  TextField(),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(onPressed: () {}, child: Text('Cancel')),
                      ElevatedButton(onPressed: () {}, child: Text('Submit')),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    void showSnackbarDilog() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Item Deleted..'),
          action: SnackBarAction(label: 'Undo', onPressed: () {}),
        ),
      );
    }

    void showButtomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              Text('Chooes Options...'),
              ListTile(title: Text('Options 01')),
              ListTile(title: Text('Options 02')),
              ListTile(title: Text('Options 02')),
              ListTile(title: Text('Options 02')),
            ],
          ),
        ),
      );
    }

    bool isVlaue = true;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon((Icons.arrow_back)),
        ),
        title: Text('UI Conponent...'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showAlertDialoug();
              },
              child: Text('Alert Dialog'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showSimpleDialoug();
              },
              child: Text('Simple Dialog'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showSnackbarDilog();
              },
              child: Text('Simple Snackbar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showButtomSheet();
              },
              child: Text('Simple Buttom Sheen'),
            ),

            Checkbox(
              value: true,
              onChanged: (value) {
                isVlaue != isVlaue;
              },
            ),
            Checkbox(
              value: false,
              onChanged: (value) {
                isVlaue != isVlaue;
              },
            ),

            Row(
              children: [
                Radio(value: 0, groupValue: 1, onChanged: (value) {}),
                Text('Options 01'),
                Radio(value: 1, groupValue: 1, onChanged: (value) {}),
                Text('Options 02'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/page01');
        },
        child: Icon(Icons.more),
      ),
    );
  }
}
