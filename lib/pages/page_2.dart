import 'package:flutter/material.dart';

class Page_2 extends StatefulWidget {
  static final String id='Page_2';
  String name='';
  String age='';
  Page_2(this.name, this.age);

  @override
  _Page_2State createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: (){
            Navigator.of(context).pop({'name': 'Dart', 'age': '33'});
          },
          color: Colors.blue,
          child: Text('Button Two'),
        ),
      ),
    );
  }
}


