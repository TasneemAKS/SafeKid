import 'package:flutter/material.dart';
import 'package:safe_kid_app/src/Widget/bezierContainer.dart';
import 'package:safe_kid_app/src/homePage.dart';
import 'package:safe_kid_app/src/welcomeKidAdd.dart';

class KidSignupPage extends StatefulWidget {
  KidSignupPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _KidSignupPageState createState() => _KidSignupPageState();
}

class _KidSignupPageState extends State<KidSignupPage> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.white),
            ),
            Text('Back',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white))
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
                hintText: title,
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                fillColor: Colors.white60,
                filled: true
            ),
          ),
        ],
      ),
    );
  }


  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width/2,
        height:MediaQuery.of(context).size.width/9 ,
        //padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black45.withAlpha(50),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2),
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xffF59523),Color(0xffFC6011)])),
        child: Text(
          'Add kid',
          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _label() {
    return Container(
        margin: EdgeInsets.only(top: 15, bottom: 10),
        child: Column(
          children: <Widget>[
            Text(
              'One Step to Safety',
              style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }

  Widget _title() {
    return Container(
        margin: EdgeInsets.only(top: 0, bottom: 0),
        child: Column(
          children: <Widget>[
            Text(
              'Make an account for your kid',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ));
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Username"),
        _entryField("Email"),
        _entryField("Password", isPassword: true),
        _entryField("Phone number"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff2B506E),Color(0xff152837)]
          ),
        ),
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -MediaQuery.of(context).size.height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: BezierContainer(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .17),
                    _label(),
                    SizedBox(height: 20),
                    _title(),
                    SizedBox(
                      height: 35,
                    ),
                    _emailPasswordWidget(),
                    SizedBox(
                      height: 35,
                    ),
                    _submitButton(),
                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
