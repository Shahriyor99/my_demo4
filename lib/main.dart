import 'package:flutter/material.dart';
import 'package:my_demo4/pages/home_page.dart';
import 'package:my_demo4/pages/page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id:(context)=> HomePage(),
        Page_2.id:(context)=> Page_2('',''),
      },
    );
  }
}

