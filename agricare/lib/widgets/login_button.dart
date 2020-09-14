import 'package:agricare/pages/bottom_bar.dart';
import 'package:agricare/pages/register.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    Dialog loginDialog = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'လယ်သမား',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                )),
            Padding(padding: EdgeInsets.all(5.0), child: new Divider()),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/bottomNavigation');
                },
                child: Text(
                  'အရောင်းဆိုင်',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                ))
          ],
        ),
      ),
    );

    return Positioned(
        // top: 670,
        top: MediaQuery.of(context).size.height * 0.86,
        left: 8,
        child: Container(
            width: MediaQuery.of(context).size.width * 0.96,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => loginDialog);
                  },
                  child: new Container(
                    width: 150.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      color: Colors.green,
                      border: new Border.all(color: Colors.white, width: 2.0),
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: new Center(
                      child: new Text(
                        'LOGIN',
                        style:
                            new TextStyle(fontSize: 17.0, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                new InkWell(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegisterPage()),
                  );
                  },
                  child: new Container(
                    width: 150.0,
                    height: 50.0,
                    decoration: new BoxDecoration(
                      color: Colors.green,
                      border: new Border.all(color: Colors.white, width: 2.0),
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: new Center(
                      child: new Text(
                        'SKIP',
                        style:
                            new TextStyle(fontSize: 17.0, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
