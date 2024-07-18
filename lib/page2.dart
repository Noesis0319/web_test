import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Page2 extends StatefulWidget {
  @override
  State createState() => Page2State();
}

class Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(
                          ),
                        ));
                  },
                  child: Text("Move")),
              Text("Hidden Scroll"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
              Text("Row1"),
            ],
          ),
        ));
  }
}
