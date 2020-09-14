import 'package:agricare/models/calcu_item.dart';
import 'package:agricare/widgets/appbar_button.dart';
import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(top: 40, left: 0, child: BarButton()),
            Positioned(
                top: 80,
                left: 10,
                child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.height * 0.88,
                    child: Lists())),
          ],
        ),
      ),
    );
  }
}

class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: calculatedata.length,
        itemBuilder: (BuildContext context, int index) {
          CalculateItem item = calculatedata[index];
          return Column(
            children: <Widget>[
              Row(children: <Widget>[
                Container(
                  height: 135,
                  width: 135,
                  padding:
                      EdgeInsets.only(left: 0, top: 10, bottom: 70, right: 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(item.img), fit: BoxFit.cover),
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(10.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        item.title,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        item.date,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Text(
                        item.subtitle,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Text(
                        item.price,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ]),
              Padding(padding: EdgeInsets.all(5.0), child: new Divider()),
            ],
          );
        });
  }
}
