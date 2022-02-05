import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safe_kid_app/src/kidSignupPage.dart';
import 'drawer.dart';


class MyKidsPage extends StatefulWidget {
  MyKidsPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyKidsPageState createState() => _MyKidsPageState();
}

class _MyKidsPageState extends State<MyKidsPage> {

  Widget _remove(){
    return InkWell(
      onTap: (){

      },
      child: Container(
        padding: EdgeInsets.fromLTRB(0,13,20,13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(300)),
          border: Border.all(color: Color(0xffFD8408), width: 2),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10,0,8,0),
              child: Icon(Icons.remove, size: 30, color: Colors.white,),
            ),

            Text('Remove',
              style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _add(){
    return InkWell(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => KidSignupPage()));
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(0,13,20,13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(300)),
          border: Border.all(color: Color(0xffFD8408), width: 2),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10,0,8,0),
              child: Icon(Icons.add, size: 30, color: Colors.white,),
            ),

          Text('Add Kid',
            style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold, color: Colors.white),
          ),
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff2B506E),
        title: Center(
          child: Text(
              'My Kids'
          ),
        ),
      ),
      endDrawer: DrawerMenu(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                colors: [Color(0xff2B506E), Color(0xff152837)])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _add(),
                _remove(),
              ],
            ),



          ],
        ),








                ),
    );
  }
}