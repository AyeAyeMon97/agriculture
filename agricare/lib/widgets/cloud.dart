import 'package:flutter/material.dart';

class CloudPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150,
      left: 13,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Text(
                    "Today",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 33),
                  child: Text("Sun",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 36),
                  child: Text("Mon",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 34),
                  child: Text("Tue",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 29),
                  child: Text("Wed",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 29),
                  child: Text("Thu",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Text(
                    "6/08",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Text("6/09",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 36),
                  child: Text("6/10",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 34),
                  child: Text("6/11",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 29),
                  child: Text("6/12",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 29),
                  child: Text("6/13",
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(13),
                  child: Icon(
                    Icons.cloud_queue,
                    color: Colors.white,
                    size: 39,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(13),
                  child: Icon(Icons.cloud, color: Colors.white, size: 39),
                ),
                Padding(
                  padding: EdgeInsets.all(13),
                  child: Icon(Icons.wb_sunny, color: Colors.white, size: 39),
                ),
                Padding(
                  padding: EdgeInsets.all(13),
                  child: Icon(Icons.wb_cloudy, color: Colors.white, size: 39),
                ),
                Padding(
                  padding: EdgeInsets.all(13),
                  child: Icon(Icons.cloud_queue, color: Colors.white, size: 39),
                ),
                Padding(
                  padding: EdgeInsets.all(13),
                  child: Icon(Icons.wb_sunny, color: Colors.white, size: 39),
                ),
              ],
            ),
          ]),
    );
  }
}
