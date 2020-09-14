import 'package:agricare/models/loan_item.dart';
import 'package:flutter/material.dart';

class LoanPage extends StatefulWidget {
  @override
  _LoanPageState createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title:
            new Center(child: new Text("ချေးငွေ", textAlign: TextAlign.center)),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: loandata.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              LoanItem item = loandata[index];
              return InkWell(
                onTap: () {},
                child: new Card(
                  elevation: 4,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        // height: 110,
                        height: MediaQuery.of(context).size.height * 0.161,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(item.image),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Center(
                          child: Container(
                            width: 150,
                            child: Text(
                              item.title,
                              maxLines: 2,
                              style: new TextStyle(fontSize: 13.0),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
