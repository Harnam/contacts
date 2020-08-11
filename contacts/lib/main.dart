import 'dart:convert';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    home: ContactsHome(),
  ));
}

var data = '[
  {
    "phone": "1234567890",
    "name": "Example 1"
  },
  {
    "phone": "1234567890",
    "name": "Example 2"
  },
  {
    "phone": "1234567890",
    "name": "Example 3"
  },
  {
    "phone": "1234567890",
    "name": "Example 4"
  },
  {
    "phone": "1234567890",
    "name": "Example 5"
  }
]';

Future<String> getFileData(String path) async {
  return await rootBundle.loadString(path);
}

  class ContactsHome extends StatelessWidget {

    Widget getTextWidgets(List<String> strings)
    {
      return new Row(children: strings.map((item) => new Text(item)).toList());
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text("Contacts"),
        ),
        body: Container(
          child: FlatButton(
            child: Text("Click Me"),
            onPressed: (){print(jsonDecode(data));},
          )
        ),
      );
    }
  }
