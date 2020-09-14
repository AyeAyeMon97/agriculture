import 'package:agricare/models/medicine_item.dart';
import 'package:agricare/models/shop.dart';
import 'package:agricare/models/shop_item.dart';
import 'package:agricare/widgets/appbar_button.dart';
import 'package:flutter/material.dart';

class ShopDetailPage extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;

  ShopDetailPage(this.image, this.title, this.subtitle);

  @override
  _ShopDetailPageState createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
  
  Widget _shopDetail() {
    return Row(children: <Widget>[
      Container(
        height: 80,
        width: 70,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.image), fit: BoxFit.cover),
          borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 15),
            ),
            Text(
              widget.subtitle,
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )
    ]);
  }

  Widget _search() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "ပစ္စည်အမျိုးစားရှာရန်",
                    hintStyle: TextStyle(fontSize: 12),
                    contentPadding:
                        EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Icon(Icons.search)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Stack(children: <Widget>[
      Positioned(top: 40, left: 0, child: BarButton()),
      Positioned(top: 100, left: 5, child: _shopDetail()),
      Positioned(top: 230, left: 20, child: _search()),
      Positioned(
        top: 300,
        left: 5,
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    ),
                itemCount: medicaldata.length,
                itemBuilder: (BuildContext context, int index) {
                  MedicinesItem item = medicaldata[index];
                  return Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 90,
                            width: 119,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(item.img),
                                  fit: BoxFit.cover),
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(3.0)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Column(children: <Widget>[
                              Text(
                                item.title,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 6.0, fontWeight: FontWeight.bold),
                              ),
                              Text(
                              item.weight,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 5.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              item.price,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 5.0, fontWeight: FontWeight.bold),
                            )
                            ]),
                          )
                        ]),
                  );
                })),
      )
    ])));
  }
}
