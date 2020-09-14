import 'package:agricare/widgets/login_button.dart';
import 'package:flutter/material.dart';

class LogingPage extends StatefulWidget {
  static const String routeName = '/login';

  @override
  _LogingPageSate createState() => _LogingPageSate();
}

class _LogingPageSate extends State<LogingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.94,
                  left: 32,
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing",
                    style: TextStyle(fontSize: 15),
                  )),
              Positioned(
                  top: 0,
                  child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.78,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/login.png"),
                            fit: BoxFit.cover),
                        borderRadius: new BorderRadius.only(
                          bottomLeft: Radius.circular(270.0),
                        ),
                      ))),
              Positioned(
                top: 60,
                left: 130,
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.18,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new AssetImage("assets/logo.png")))),
              ),
              Positioned(
                top: 210,
                left: 155,
                child: Text(
                  "AgriCare",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              LoginButton()
            ],
          )),
    ));
  }
}
