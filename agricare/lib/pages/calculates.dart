import 'package:agricare/pages/calculate1.dart';
import 'package:agricare/widgets/appbar_button.dart';
import 'package:flutter/material.dart';

class CalculatesPage extends StatefulWidget {
  @override
  _CalculatesPageState createState() => _CalculatesPageState();
}

class _CalculatesPageState extends State<CalculatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Positioned(top: 40, left: 0, child: BarButton()),
            Positioned(
                // top: 140,
                top: MediaQuery.of(context).size.height * 0.15,
                left: 15,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.green,
                      size: 50,
                    ),
                    Container(
                      width: 60,
                      height: 2,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.pie_chart_outlined,
                      color: Colors.green,
                      size: 33,
                    ),
                    Container(
                      width: 60,
                      height: 2,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.local_florist,
                      color: Colors.green,
                      size: 33,
                    ),
                    Container(
                      width: 60,
                      height: 2,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.straighten,
                      color: Colors.green,
                      size: 33,
                    ),
                  ],
                )),
            Positioned(
                // top: 220,
                top: MediaQuery.of(context).size.height * 0.25,
                left: 20,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "စိုက်ပျိုးဒေသ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Dropdown(
                          title: "ဒေသ",
                        ),
                        Dropdown(
                          title: "မြို့နယ်",
                        ),
                        Dropdown(
                          title: "ကျေးရွာအုပ်စု",
                        ),
                        Dropdown(
                          title: "ကျေးရွာ",
                        ),
                        SizedBox(height: 100),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CalculateOnePage()),
                            );
                          },
                          child: new Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            padding: EdgeInsets.symmetric(horizontal: 30.0),
                            margin: EdgeInsets.only(top: 18.0, left: 230),
                            decoration: new BoxDecoration(
                              color: Colors.green,
                              border: new Border.all(
                                  color: Colors.white, width: 2.0),
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                            child: new Center(
                              child: new Text(
                                'ရှေ့သို့',
                                style: new TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ]),
                ))
          ],
        ),
      )),
    );
  }
}

class Dropdown extends StatefulWidget {
  final String title;
  Dropdown({this.title});

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  int _value = 1;
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      width: MediaQuery.of(context).size.width * 0.9,
      height: 60,
      margin: EdgeInsets.only(top: 18.0, left: 0),
      child: DropdownButton(
          value: _value,
          isExpanded: true,
          items: [
            DropdownMenuItem(
              child: Text(widget.title),
              value: 1,
            ),
          ],
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          }),
    );
  }
}
