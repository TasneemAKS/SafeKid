import 'package:flutter/material.dart';
import 'package:safe_kid_app/src/homePage.dart';
import 'package:safe_kid_app/src/kidSignupPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatar_glow/avatar_glow.dart';

class WelcomeKidAdd extends StatefulWidget {
  WelcomeKidAdd({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomeKidAddState createState() => _WelcomeKidAddState();
}

class _WelcomeKidAddState extends State<WelcomeKidAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(0)),
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
                  colors: [Color(0xff2B506E),Color(0xff152837)])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              _logo(),
              _welcome(),
              _title(),
              _label(),
              SizedBox(
                height: 30,
              ),
              _addButton(),
              SizedBox(
                height: 30,
              ),
              _notNowButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return AvatarGlow(
      child: Material(
        elevation: 15.0,
        shape: CircleBorder(),
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: FlutterLogo(
            size: 50.0,
          ),
          radius: 50.0,
        ),),
      endRadius: 90,
      duration: Duration(seconds: 2),
      glowColor: Colors.white24,
      repeat: true,
      repeatPauseDuration: Duration(seconds: 1),
      startDelay: Duration(seconds: 1),
    );
  }

  Widget _welcome() {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 40),
        child: Column(
          children: <Widget>[
            Text(
              'Welcome to',
              style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }

  Widget _label() {
    return Container(
        margin: EdgeInsets.only(top: 40, bottom: 15),
        child: Column(
          children: <Widget>[
            Text( ///TODO check
              'Let\'s make an account',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 10,),
            Text(
              'for your kid',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ],
        ));
  }

  Widget _addButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => KidSignupPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(300)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black45.withAlpha(50),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: Colors.white),
        child: Text(
          'Add kid',
          style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold, color: Color(0xffFD8408)),
        ),
      ),
    );
  }

  Widget _notNowButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(300)),
          border: Border.all(color: Color(0xffFD8408), width: 2),
        ),
        child: Text(
          'Not now',
          style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold, color: Color(0xffFD8408)),
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Safe',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: 'Kid!',
              style: TextStyle(color: Color(0xffFD8408), fontSize: 30),
            ),
          ]),
    );
  }
}
