import 'package:agricare/models/order_title.dart';
import 'package:agricare/widgets/appbar_button.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  static const String routeName = '/order';
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                "အမှာစာတင်ရန် သင်ကြိုက်နှစ်သက်သည့်ဆိုင်များကိုရွေးချယ်နိုင်ပါသည်",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 3,
            child: Container(
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 0.99,
                child: Lists()),
          )
        ],
      )),
    );
  }
}

class Lists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: orderdata.length,
                    itemBuilder: (context, index) {
                      OrderItem item = orderdata[index];
                      return Card(
                        elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                topLeft: Radius.circular(15))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 7, top: 15),
                                  child: Text(
                                    item.title,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width * 1,
                                    height: MediaQuery.of(context).size.height *
                                        0.21,
                                    padding: EdgeInsets.only(
                                        left: 7, top: 15, right: 10),
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: orderShopData.length,
                                        itemBuilder: (context, index) {
                                          OrderShopItem item =
                                              orderShopData[index];
                                          return Column(children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 5.0,
                                              ),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.12,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(item.img),
                                                    fit: BoxFit.cover),
                                                borderRadius: new BorderRadius
                                                        .all(
                                                    new Radius.circular(3.0)),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 0.0, right: 45),
                                              child: Text(
                                                item.shop,
                                              ),
                                            ),
                                            Text(item.price),
                                          ]);
                                        }))
                              ]));
                    });
  }}
