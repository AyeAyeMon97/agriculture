import 'package:agricare/pages/order.dart';
import 'package:flutter/material.dart';

class ResultButton extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    Dialog showDetailDialog = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        height: 300.0,
        width: 300.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'စတင်စိုက်ပျိုးမည်',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                )),
            Padding(padding: EdgeInsets.all(5.0), child: new Divider()),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'ချေးငွေလျှောက်ရန်',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                )),
            Padding(padding: EdgeInsets.all(5.0), child: new Divider()),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/order');
                },
                child: Text(
                  'အမှာစာတင်မည်',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ))
          ],
        ),
      ),
    );

    return Positioned(
        top: MediaQuery.of(context).size.height * 0.8,
        left: 2,
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          child: Card(
              child: Column(children: <Widget>[
            SizedBox(height: 3),
            Text(
              "စုစုပေါင်းကျသင့်ငွေ 900,000 Ks",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                "သင်မလိုအပ်သည့် ပစ္စည်းများကို uncheck လုပ်၍ ဖြုတ်ပစ်နိုင်သည်။",
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new InkWell(
                  onTap: () {},
                  child: new Container(
                    width: 150.0,
                    height: 40.0,
                    decoration: new BoxDecoration(
                      color: Colors.green,
                      border: new Border.all(color: Colors.white, width: 2.0),
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    child: new Center(
                      child: new Text(
                        'ပယ်ဖျက်မည်',
                        style:
                            new TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                new InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => showDetailDialog);
                  },
                  child: new Container(
                    width: 150.0,
                    height: 40.0,
                    decoration: new BoxDecoration(
                      color: Colors.green,
                      border: new Border.all(color: Colors.white, width: 2.0),
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    child: new Center(
                      child: new Text(
                        'သိမ်းမည်',
                        style:
                            new TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ])),
        ));
  }
}
