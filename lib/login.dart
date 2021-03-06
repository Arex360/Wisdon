import 'package:flutter/material.dart';
import 'whole.dart';
import 'register.dart';
import 'dashboard.dart';
class Page extends StatefulWidget {
  Page({Key key}) : super(key: key);
  static String tag = 'login-page';
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  final myKey = GlobalKey<FormState>();
  String n , p;
  final emailC = TextEditingController();
  final passC = TextEditingController();
  void show(){
    Container(
      child: Text('dtyt'),

    );
  }
  Widget build(BuildContext context) {
    
    final logo = Hero(
       tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 60,
        child: Image(
          image: AssetImage('Assets/mainIcon.png'),
  
          ),
      ),
    );
    final text = Text('hello');
    final email = TextFormField(
      controller: emailC,
      validator: (input)=> !input.contains('@') ? 'Not valid ': null,
      onSaved: (input)=> n = input,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'Enter Email',
        icon: Icon(Icons.email),
        hintText: 'E.g YourEmail@domain.com',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
      ),
    );
    final password = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      validator: (input)=> input.length < 9 ? 'wrong': null,
      controller: passC,
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.vpn_key),
        labelText: 'Enter Password',
        hintText: 'E.g Password123',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
      ),
    );
    final LoginBtn = Padding(
      padding: EdgeInsets.symmetric(vertical:  16),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 10,
        child: MaterialButton(
          minWidth: 120,
          height: 48,
          onPressed: (){
            if(myKey.currentState.validate()){

            }
            if(emailC.text == 'test@wisdon.com' && passC.text == '123'){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dash()),
              );
              
              return showDialog(
              context: context,
              builder: (context){
                Whole.name = emailC.text;
                return AlertDialog(
                 content: Row(children: <Widget>[
                   Icon(Icons.check_circle_outline, color: Colors.red, size: 49,),
                   SizedBox(width: 20,),
                   Text('Welcome Back')

                 ],
                 ),
                 title: Text('Logged in successfully'),
                 contentPadding: EdgeInsets.all(30),
                 elevation: 20,
                );
              }
            );  
            }
            else{
              return showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                 content: Row(children: <Widget>[
                   Icon(Icons.warning, color: Colors.red, size: 49,),
                   SizedBox(width: 20,),
                   Text('Failed to login')

                 ],
                 ),
                 title: Text('Wrong Password'),
                 contentPadding: EdgeInsets.all(30),
                 elevation: 20,
                );
              }
            );
            }
          },
          color: Colors.red,
          child: Text('Login', style:  TextStyle(color: Colors.white)
          ),
        ),
      ),
    );
    final RegisterBtn = Padding(
      padding: EdgeInsets.symmetric(vertical:  16),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 10,
        child: MaterialButton(
          minWidth: 120,
          height: 48,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Register()),
              );
          },
          color: Colors.red,
          child: Text('Register', style:  TextStyle(color: Colors.white)
          ),
        ),
      ),
    );
    final emailText = Container(
         margin: EdgeInsets.only(left: 15, top: 2, bottom: 0),
         child:  Text('Email',
            style: TextStyle(
              fontSize: 18,
            ),
         ),
    );
     final passText = Container(
         margin: EdgeInsets.only(left: 15, top: 2, bottom: 0),
         child:  Text('Password',
            style: TextStyle(
              fontSize: 18,
            ),
         ),
    );
    final forgetPass = Text(
      'forget Password?',
      style: TextStyle(
        color: Colors.blue
      ),
    );
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisdon World'),
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Text('Help'),
        onPressed: (){
          print(emailC.text);
        },
      ),
       backgroundColor: Colors.white,
       body: Center(
         child: Form(
           key: myKey,
                    child: ListView(
               shrinkWrap: true,
               padding: EdgeInsets.only(left: 24, right: 24),
               children: <Widget>[
                 logo,
                 SizedBox(height: 25),
      
                 SizedBox(height: 10),
                 email,
                 SizedBox(height: 15),

                 SizedBox(height: 15),
                 password,
                 SizedBox(height: 28),
        //       LoginBtn,
            
                 Row(children: <Widget>[
                    SizedBox(width: 10),
                   LoginBtn,
                   SizedBox(width: 60),
                   RegisterBtn
                 ],
                 ),
                SizedBox(height: 28),  
                forgetPass,     

               ],
           ),
         ),
         ),
    );
  }
}
