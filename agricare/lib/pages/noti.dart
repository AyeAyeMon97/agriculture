import 'package:agricare/models/noti_item.dart';
import 'package:agricare/widgets/appbar_button.dart';
import 'package:flutter/material.dart';

class NotiPage extends StatefulWidget {
  @override
  _NotiPageState createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
          child: Stack(
        children: <Widget>[
          Positioned(top: 40, left: 0, child: BarButton()),
          Positioned(
              top: 80,
              left: 0,
              child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.88,
                  child: Lists())),
        ],
      )),
    );
  }
}

class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: notidata.length,
        itemBuilder: (BuildContext context, int index) {
          NotiItem item = notidata[index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
            )),
            child: new Container(
              padding: new EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 0.0,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        item.title,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height:7),
                      Text(
                        item.date,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height:7),
                      Text(
                        item.subtitle,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      )
                    ]),
              ),
            ),
          );
        });
  }
}
