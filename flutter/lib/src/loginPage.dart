import 'package:flutter/material.dart';
import 'package:safe_kid_app/src/homePage.dart';
import 'package:safe_kid_app/src/forgetPassword.dart';
import 'package:safe_kid_app/src/signupPage.dart';
import 'Widget/bezierContainer.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  suffixIcon: IconButton(
                    icon: Icon (
                      isPassword ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    }
                  ),
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
          'Login',
          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _forgetPasswordButtom() {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.centerRight,
        child: Text('Forgot Password ?',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white)),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ForgetPasswordPage()));
      },
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
            Text(
              'Register',
              style: TextStyle(
                  color: Color(0xffFC6011),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),

/*
            Stack(
              children: [
                Container(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 75,
                      height: 15,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 75,
                      height: 12,
                      color: Color(0xffFC6011) ,
                    ),
                  ],
                ),
              ],
            ),
*/


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
              'Welcome Back!',
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
            Text(
              'Login to continue join our community.',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ));
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Email or Usernamr"),
        SizedBox(height: 20),
        _entryField("Password", isPassword: true ),
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
                  SizedBox(height: 20),
                  _label2(),
                  SizedBox(height: 40),
                  _emailPasswordWidget(),
                  _forgetPasswordButtom(),
                  SizedBox(height: 70),
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
