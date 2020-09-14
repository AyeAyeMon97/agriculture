import 'package:agricare/pages/calculate3.dart';
import 'package:agricare/widgets/appbar_button.dart';
import 'package:flutter/material.dart';

class CalculateTwoPage extends StatefulWidget {
  @override
  _CalculateTwoPageState createState() => _CalculateTwoPageState();
}

class _CalculateTwoPageState extends State<CalculateTwoPage> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(children: <Widget>[
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
                                "သီးနှံအမျိုးအစား",
                                style: TextStyle(fontSize: 18),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: 60,
                                margin: EdgeInsets.only(top: 18.0, left: 0),
                                child: DropdownButton(
                                    value: _value,
                                    isExpanded: true,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text("အမျိုးအစားရွေးရန်"),
                                        value: 1,
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    }),
                              ),
                              SizedBox(height: 350),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.92,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new InkWell(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: new Container(
                                          width: 130.0,
                                          height: 45.0,
                                          decoration: new BoxDecoration(
                                            color: Colors.green,
                                            border: new Border.all(
                                                color: Colors.white,
                                                width: 2.0),
                                            borderRadius:
                                                new BorderRadius.circular(20.0),
                                          ),
                                          child: new Center(
                                            child: new Text(
                                              'နောက်သို့',
                                              style: new TextStyle(
                                                  fontSize: 17.0,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      new InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CalculateThreePage()),
                                          );
                                        },
                                        child: new Container(
                                          width: 130.0,
                                          height: 45.0,
                                          decoration: new BoxDecoration(
                                            color: Colors.green,
                                            border: new Border.all(
                                                color: Colors.white,
                                                width: 2.0),
                                            borderRadius:
                                                new BorderRadius.circular(20.0),
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
                                      ),
                                    ],
                                  ))
                            ]),
                      ))
                ]))));
  }
}
