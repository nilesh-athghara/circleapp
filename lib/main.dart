import "package:flutter/material.dart";
import 'package:circleapp/screens/Discover.dart';
import 'package:flutter/services.dart';
import 'dart:async';

void main()
{
  runApp(new MaterialApp(home: new App(),
    title: "Circle",
    debugShowCheckedModeBanner: false,
    routes: <String,WidgetBuilder>
    {
      '/Discover':(BuildContext context)=>Discover(),
    },

  ));
}

class App extends StatefulWidget{
  @override
  _State createState()=>new _State();
}

class _State extends State<App>
{

  @override
  Widget build(BuildContext context)
  {
    return  Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Image.asset('assest/logo.png',height:MediaQuery.of(context).size.height/2.5,),
      ),
    );
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    Timer(Duration(milliseconds: 1000),(){
      Navigator.of(context).pushNamedAndRemoveUntil('/Discover',(Route<dynamic> route)=>false);
    });
  }
}