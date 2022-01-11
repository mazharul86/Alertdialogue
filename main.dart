import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //this is alert dialogue
            AlertDialog(
              title: Text("Alert"),
              content: Text("This is content messege"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("yes")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("no")),
              ],
            ),
            //this is copertino dialogue
            CupertinoAlertDialog(
              title: Text("Alert"),
              content: Text("This is content messege"),
              actions: [
                CupertinoDialogAction(child: Text("No")),
                CupertinoDialogAction(child: Text("yes")),
              ],
            ),
            //this is custom dialogue which appear when we click a button
            Container(
              child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("Alert"),
                              content: Text("This is content messege"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("yes")),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("no"))
                              ],
                            ));
                  },
                  child: Text("showdialugue")),
            )
          ],
        ),
      ),
    );
  }
}
