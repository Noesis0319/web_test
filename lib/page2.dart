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
              Text("Text1"),
              Text("Textzxczc1"),
              Text("Text1"),
              Text("Text1"),
              Text("Texqweqwet1"),
              Text("Text1"),
              Text("Text1"),
              Text("Texasvat1"),
              Text("Text1"),
              Text("Texzxct1"),
              Text("Text1zxv"),
              Text("Text1asd"),
            ],
          ),
        ));
  }
}
