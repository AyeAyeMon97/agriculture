import 'package:agricare/models/shop.dart';
import 'package:agricare/models/shop_item.dart';
import 'package:agricare/pages/shop_detail.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: new Center(
            child: new Text("Shop List", textAlign: TextAlign.center)),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
      ),
      body: Lists(),
    );
  }
}

class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(6),
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        Item item = data[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ShopDetailPage(item.image, item.title, item.subtitle)),
            );
            // print(index.toString());
          },
          child: Card(
              child: Row(
            children: <Widget>[
              Container(
                height: 100,
                width: 110,
                padding:
                    EdgeInsets.only(left: 0, top: 10, bottom: 70, right: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(item.image), fit: BoxFit.cover),
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
                      item.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 15),
                    ),
                    Text(
                      item.subtitle,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          )),
        );
      },
    );
  }
}
