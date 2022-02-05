import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

/*
class SimpleDialogItem extends StatelessWidget {
  const SimpleDialogItem({Key key, this.icon, this.color, this.text, this.onPressed}) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 36.0, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
} */

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  Widget _kidsDialog(){
    return SimpleDialog(
      title: Text('Choose a kid :'),
      children: [
      ],
    );
  }

  Widget _footer(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FloatingActionButton(
            backgroundColor: Color(0xffFC6011),
            onPressed: () {
              _kidsDialog();
            },
          child: Icon(Icons.supervisor_account_sharp, size: 32),
            ),

        CircleAvatar(
          radius: 37,
          backgroundColor: Colors.white,
          child: Container(
            child: Center(child: Text('GO',style: TextStyle(fontSize: 27,color: Colors.white),),),
            width: 66.0,
            height: 66.0,
            padding: const EdgeInsets.all(2.0),
            decoration: new BoxDecoration(
              color: const Color(0xff152837),
              shape: BoxShape.circle,
            ),
          ),
        ),

        FloatingActionButton(
          backgroundColor: Color(0xffFC6011),
          onPressed: () {
          },
          child: Icon(Icons.settings_phone, size: 32),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xff2B506E),
        title: Center(
          child: Text(
              'Home'
          ),
        ),
      ),
      endDrawer: DrawerMenu(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _footer(),
          ],
        ),
      ),
    );
  }



}
