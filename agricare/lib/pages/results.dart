import 'package:agricare/models/result_items.dart';
import 'package:agricare/widgets/appbar_button.dart';
import 'package:agricare/widgets/result_buttonBar.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (contxt, vehicleListConstraints) {
          return Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Positioned(top: 40, left: 0, child: BarButton()),
              Positioned(
                  top: 45,
                  left: 240,
                  child: Text(
                    "အဝယ်စာရင်းထုတ်ရန်",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  )),
              Positioned(
                top: vehicleListConstraints.maxHeight * .12,
                // left: (vehicleListConstraints.maxWidth -
                //         vehicleListConstraints.maxWidth * .9) /
                //     2,
                child: Column(children: <Widget>[
                  Text("Tranche 1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Container(
                    // color: Colors.red,
                    height: vehicleListConstraints.maxHeight * 0.7,
                    width: vehicleListConstraints.maxWidth * 1,
                    child: ListView.builder(
                      itemCount: resultdata.length,
                      itemBuilder: (context, int index) {
                        ResultItem item = resultdata[index];
                        return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.23,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    left: 350,
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.green,
                                    )),
                                Positioned(
                                    top: 25,
                                    left: 15,
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.9,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.09,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.rectangle,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15.0),
                                                bottomRight:
                                                    Radius.circular(15.0),
                                                topRight: Radius.circular(15.0),
                                                bottomLeft:
                                                    Radius.circular(15.0))),
                                      )),
                                      Positioned(
                                        top: 10,
                                        left: 110,
                                        child: Text(
                                          item.title,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Positioned(
                                        top: 40,
                                        left: 110,
                                        child: Text(
                                          item.weight,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ])),
                                Positioned(
                                    top: 100,
                                    left: 20,
                                    child: Text(
                                      item.acres,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                Positioned(
                                  top: 120,
                                  left: 6,
                                  right: 6,
                                  child: Container(
                                    height: 1,
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.grey[200],
                                  ),
                                ),
                                Positioned(
                                  top: 130,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Center(
                                      child:Text(item.price, style:TextStyle(fontWeight: FontWeight.bold))
                                    ),
                                  ),
                                )
                              ])),
                        );
                      },
                    ),
                  )
                ]),
              ),
              ResultButton()
            ],
          );
        },
      ),
    );
  }
}
