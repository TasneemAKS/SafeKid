import 'package:flutter/material.dart';
import 'package:safe_kid_app/src/signupPage.dart';
import 'package:safe_kid_app/src/resetPassword.dart';
import 'Widget/bezierContainer.dart';

class ForgetPasswordPage extends StatefulWidget {
  ForgetPasswordPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
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
        children: <Widget>[ /*
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ), */
          TextField(
              obscureText : isPassword,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  hintText: title,
                  fillColor: Colors.white60,
                  filled: true)
          ),
        ],
      ),
    );
  }

  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPasswordPage()));
      },
        child : Container(
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
            'Reset Password',
            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Don\'t have an account ?',
                style: TextStyle(fontSize: 15,color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Color(0xffFC6011),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ]
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
              'Can\'t log in?' ,
              style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }

  Widget _label2() {
    return Container(
        margin: EdgeInsets.only(top: 0, bottom: 10),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Did you forget your password?',
                style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
              ), ),
            SizedBox(height: 50,),
            Center(
              child: Text(
                'Enter your Email and we will',
                style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
              ),
            SizedBox(height: 10,),
            Center(
              child: Text(
                'send you a recovery link.',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ));
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Email"),
        SizedBox(height: 20),
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
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: -height * .15,
                  right: -MediaQuery.of(context).size.width * .4,
                  child: BezierContainer()),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .17),
                      _label(),
                      SizedBox(height: 30),
                      _label2(),
                      SizedBox(height: 50),
                      _emailPasswordWidget(),
                      SizedBox(height: 50),
                      _submitButton(),
                      SizedBox(height: height * .03),
                      _createAccountLabel(),
                    ],
                  ),
                ),
              ),
              Positioned(top: 40, left: 0, child: _backButton()),
            ],
          ),
        ));
  }
}
