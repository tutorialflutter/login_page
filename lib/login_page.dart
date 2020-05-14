import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -getSmallDiameter(context) / 3,
            right: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xffb22662), Color(0xffff6da7)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
            ),
          ),
          Positioned(
            top: -getBigDiameter(context) / 4,
            left: -getBigDiameter(context) / 4,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xffb22662), Color(0xffff6da7)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              child: Center(
                child: Text(
                  "DribleBee",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -getBigDiameter(context) / 2,
            right: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFff3e9ee),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 320, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Color(0xFFFFF4891),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFFF4891)),
                          ),
                          labelText: "Email",
                          labelStyle: TextStyle(color: Color(0xFFFFF4891)),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Color(0xFFFFF4891),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFFF4891)),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Color(0xFFFFF4891)),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(color: Color(0xffff4691)),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.amber,
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  "SIGN IN",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [Color(0xffb22662), Color(0xffff6da7)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              )),
                        ),
                      ),
                      FloatingActionButton(
                        mini: true,
                        elevation: 0,
                        child: Image(image: AssetImage("assets/images/icon_fb.png"),),

                        onPressed: (){}),
                      FloatingActionButton(
                        mini: true,
                        elevation: 0,
                        child: Image(image: AssetImage("assets/images/icon_google_2.png"),),

                        onPressed: (){}),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
