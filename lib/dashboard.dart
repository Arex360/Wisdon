import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wisdon/screens/profile.dart';
import 'login.dart';
import 'package:wisdon/screens/chat.dart';
import 'package:wisdon/screens/events.dart';
import 'package:wisdon/screens/home.dart';
import 'package:wisdon/screens/setting.dart';
class Dash extends StatefulWidget {
  Dash({Key key}) : super(key: key);

  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
     var currentTab = 0;
     PageController pageC;
      @override
     void initState() { 
       super.initState();
       pageC = PageController();
     }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.replay),
        onPressed: (){
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dash()),
              );
        },
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: currentTab,
        onTap: (int index){
          setState(() {
            currentTab = index;
          });
        },
        activeColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings)
          ),
        ],
      ),
      body: PageView(
        onPageChanged: (int index){
          setState(() {
             currentTab = index;            
          });
        },
        controller: pageC,
        children: <Widget>[
          Events(),
          Home(),
          Chat(),
          Profile(),
          Settings(),
        ],
      )
    );
  }
}