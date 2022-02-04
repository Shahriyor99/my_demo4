import 'package:flutter/material.dart';
import 'package:my_demo4/pages/page_2.dart';

class HomePage extends StatefulWidget {
  static final String id='HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data="ButtonOne";

  Future _OpenPageTwo() async{
    Map result = await Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext){
          return new Page_2('Flutter','22');
        }
    ));

    if(result != null && result.containsKey('name')){
      setState(() {
        data = result['name']+' '+result['age'];
      });
    }else{
      print('Nothing');
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: (){
            _OpenPageTwo();
          },
          color: Colors.red,
         child: Text(data),
        ),
      ),
    );
  }
}
