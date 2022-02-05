import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:safe_kid_app/src/homePage.dart';
import 'package:safe_kid_app/src/welcomePage.dart';
import 'myKidsPage.dart';
class DrawerMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
            padding: EdgeInsets.all(0.0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Roberto Aleydon'),
                accountEmail: Text('aleydon@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: ExactAssetImage('assets/aleydon.jpg'),
                ),
                //onDetailsPressed: (){
                //},
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/fundo.jpg"),
                        fit: BoxFit.cover)
                ),
              ),
              ListTile(
                title: Text('Home',
                  style: TextStyle(fontSize: 16,color:Color(0xff2B506E)),
                ),
                leading: Icon(Icons.home, color: Color(0xffFC6011),),
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomePage()));},
              ),

              SizedBox(height: 20),

              ListTile(
                title: Text('My Profile',
                    style: TextStyle(fontSize: 18,color:Color(0xff2B506E)),
                ),
                leading: Icon(Icons.person, color: Color(0xffFC6011),),
                onTap: (){},
              ),

              SizedBox(height: 20),

              ListTile(
                title: Text('My Kids',
                  style: TextStyle(fontSize: 18,color:Color(0xff2B506E)),
                ),
                leading: Icon(Icons.people_alt_rounded, color: Color(0xffFC6011),),
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MyKidsPage()));
                },
              ),

              SizedBox(height: 20),

              ListTile(
                title: Text('Settings',
                  style: TextStyle(fontSize: 18,color:Color(0xff2B506E)),
                ),
                  leading: Icon(Icons.settings, color: Color(0xffFC6011),),
                  onTap: (){},
              ),

              SizedBox(height: 20),

              ListTile(
                title: Text('Close',
                  style: TextStyle(fontSize: 18,color:Color(0xff2B506E)),
                ),
                leading: Icon(Icons.close, color: Color(0xffFC6011),),
                  onTap: (){
                  Navigator.of(context).pop();}
                ),

              SizedBox(height: 20),

              ListTile(
                  title: Text('Logout',
                    style: TextStyle(fontSize: 18,color:Color(0xff2B506E)),
                  ),
                  leading: Icon(Icons.logout, color: Color(0xffFC6011),),
                  onTap: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => WelcomePage()));
                  }
              ),

              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        'All Right Reserved',
                        style: TextStyle(fontSize: 12,color:Color(0xff2B506E),fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Icon(Icons.copyright, color: Color(0xffFC6011), size: 15),
                ],
              ),

            ]
        ),
      );
  }
}