import 'package:agricare/pages/calcu_history.dart';
import 'package:agricare/pages/calculates.dart';
import 'package:agricare/pages/noti.dart';
import 'package:flutter/material.dart';

class IconCardPage extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    return Positioned(
              top: 390,
              left: 30,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.5,
                child: GridView.builder(
                    shrinkWrap: false,
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 2.5),
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          if (index == 1) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotiPage()),
                            );
                          }else if(index == 2){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CalculatePage()),
                            );
                          }else if(index == 3){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CalculatesPage()),
                            );
                          }
                        },
                        child: Card(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 10,
                                left: 50,
                                child: index == 0
                                    ? Icon(
                                        Icons.search,
                                        color: Colors.green,
                                        size: 60,
                                      )
                                    : index == 1
                                        ? Icon(
                                            Icons.notifications,
                                            color: Colors.green,
                                            size: 60,
                                          )
                                        : index == 2
                                            ? Icon(
                                                Icons.show_chart,
                                                color: Colors.green,
                                                size: 60,
                                              )
                                            : Icon(
                                                Icons.pie_chart,
                                                color: Colors.green,
                                                size: 60,
                                              ),
                              ),
                              Positioned(
                                top: 70,
                                left: 50,
                                child: index == 0
                                    ? Text("ရှာဖွေ")
                                    : index == 1
                                        ? Text("အကြောင်းကြား")
                                        : index == 2
                                            ? Text("ထွက်ချက်ပြီး")
                                            : Container(
                                                width: 100,
                                                child: Text(
                                                  "သီနှံစိုက်ပျိုးမှုတွက်ချက်ရန်",
                                                  maxLines: 2,
                                                )),
                              ),
                              Positioned(
                                  top: 5,
                                  left: 117,
                                  child: index == 0
                                      ? Text("")
                                      : index == 1
                                          ? Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.09,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.04,
                                              decoration: new BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)),
                                                color: Colors.red,
                                              ),
                                              child: Text(
                                                "5",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18),
                                              ),
                                            )
                                          : index == 2
                                              ? Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.09,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.04,
                                                  decoration: new BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    color: Colors.red,
                                                  ),
                                                  child: Text(
                                                    "3",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18),
                                                  ),
                                                )
                                              : Text(""))
                            ]),
                          ),
                        ),
                      );
                    }),
              ));
  }}