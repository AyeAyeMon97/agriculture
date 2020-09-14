import 'package:agricare/widgets/cloud.dart';
import 'package:agricare/widgets/icon_card.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static const String routeName = '/main';
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: Stack(children: <Widget>[
          Positioned(
            top: 0,
            child: new Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100.0),
                    bottomRight: Radius.circular(70.0)),
                color: Colors.green,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "33",
                    style: TextStyle(fontSize: 33, color: Colors.white),
                  ),
                  Text('Sunny 33 / 26C',
                      style: TextStyle(fontSize: 15, color: Colors.white))
                ]),
          ),
          Positioned(
            top: 47,
            left: 270,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.24,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Icon(
                Icons.cloud,
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
          CloudPage(),
          Positioned(
            top: 260,
            left: 10,
            child: new Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.17,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 265,
            child: Text(
              "အသိပေးချက်",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Positioned(
            left: 30,
            top: 300,
            child: Container(
                width: MediaQuery.of(context).size.width * 0.92,
                child: Text(
                  "စိုက်ပျိုးထားသော ငရုပ်ပင်များ အာဟာရ ပြည့်ဝရန် Compound - 15:15:15 ကို ဖြန်းပေးသင့်သော....",
                  maxLines: 2,
                )),
          ),
          IconCardPage()
        ]),
      ),
      )
    );
  }
}
