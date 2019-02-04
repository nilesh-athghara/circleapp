import "package:flutter/material.dart";
import 'package:page_indicator/page_indicator.dart';

class Discover extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Discover> {
Future _showAlert(BuildContext context,String message) async 
{
  return showDialog(
    context: context,
    child: AlertDialog( shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
      title: Center(child:Text(message,style: TextStyle(fontWeight:FontWeight.bold),)),
      content: Text("By creating an account, you agree to our Terms of Service and our Privacy Policy"),
      
      actions: <Widget>[
        Row(
          children: <Widget>[
            FlatButton(onPressed: ()=>Navigator.pop(context),child: Text("CANCEL",style: TextStyle(fontWeight:FontWeight.bold,),),),
              FlatButton(onPressed: ()=>Navigator.of(context).pushNamed('/Settings'),child: Text("I AGREE",style: TextStyle(color:Colors.indigo,fontWeight:FontWeight.bold),),)
          ],
          
        ),
         
      ],
    )
  );
}

  Widget page1(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Discover people",
                style: TextStyle(color: Colors.white, fontSize: height / 16),
              ),
            ),
            Container(
              height: height /2.5,
              margin: EdgeInsets.fromLTRB(0.0, height/7, 0.0, 10),
              child: Image.asset('assest/logo.png',),
            ),
            Container(
              margin: EdgeInsets.only(top: height/10),
              child: Text(
                "CIRCLE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: height / 15,
                    letterSpacing: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }




  Widget page2(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 30),
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Text(
                      "Discover who has been ",
                      style:
                          TextStyle(color: Colors.white, fontSize: height / 20),
                    ),
                    Text(
                      "around you",
                      style:
                          TextStyle(color: Colors.white, fontSize: height / 20),
                    ),
                  ],
                ))),
            Container(
              height: height / 1.35,
              margin: EdgeInsets.fromLTRB(0.0, 20, 0.0, 20),
              child: Image.asset('assest/step2.png'),
            ),
          ],
        ),
      ),
    );
  }




  Widget page3(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.lightBlueAccent,
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 30),
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Text(
                      "Connect, chat and grow ",
                      style:
                          TextStyle(color: Colors.white, fontSize: height / 20),
                    ),
                    Text(
                      "your network",
                      style:
                          TextStyle(color: Colors.white, fontSize: height / 20),
                    ),
                  ],
                ))),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, height/40, 0.0, height/60),
              height: height / 1.7,
              child: Center(
                child: Image.asset('assest/step3.png'),
              ),
            ),
            Container(
              
              padding: EdgeInsets.fromLTRB(width/30, 0.0, width/30, 0.0),
              child: Text("By registering, you agree to our Terms of Service and our Privacy Policy",style: TextStyle(color: Colors.white),),
            ),
            Container(
              margin: EdgeInsets.only(top: height/35),
              color: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  children: <Widget>[
                    OutlineButton(
                    
                      highlightedBorderColor: Colors.white,
                     color: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0) ),
                      padding: EdgeInsets.fromLTRB(width/5.5, 15, width/5.5,15),
                      onPressed: (){_showAlert(context, "ACCEPT TERMS");},
                   
                      child: Text(
                        "Connect With Facebook",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: height/70,),
                    Text("We will never post anything on Facebook",style: TextStyle(color: Colors.white,fontSize: width/30),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
      child: Center(
        child: PageIndicatorContainer(
            pageView: PageView(
              children: <Widget>[
                page1(context),
                page2(context),
                page3(context),
              ],
            ),
            align: IndicatorAlign.top, // your indicator align with container
            length: 3, // indicator count
            indicatorColor: Colors.white, // unselected indicator color
            indicatorSelectorColor: Colors.red, // selected indicator color
            padding: EdgeInsets.only(top: 8.0), // padding with bottom .when align top you should use properties `top:10.0`
            size: 10.0, // indicator size.
            indicatorSpace: 15.0,)
      ),
    ));
  }
}
