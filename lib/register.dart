import 'package:flutter/material.dart';
import 'login.dart';
class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
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
    final fnameC = TextEditingController();
    final rFName = TextFormField(
      controller: fnameC,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'UserName',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
      ),
    );

    final mailC = TextEditingController();
    final rLName = TextFormField(
      controller: mailC,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email Address',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
      ),
    );
    final phoneC = TextEditingController();
     final phone = TextFormField(
      controller: phoneC,
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Phone Number',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
      ),
    ); 
    final passC = TextEditingController();
     final pass = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      controller: passC,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
      ),
    );

/// Buttons 
    final SignUp = Padding(
      padding: EdgeInsets.symmetric(vertical:  16),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 10,
        child: MaterialButton(
          minWidth: 120,
          height: 48,
          onPressed: (){
           if(fnameC.text != '' && mailC.text != '' && phoneC.text != '' && passC.text != ''){
             print(fnameC.text);
             if(mailC.text.contains('@') && mailC.text.contains('.com') && mailC.text.length != 5){
               return showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                 content: Row(children: <Widget>[
                   Icon(Icons.check_circle_outline, color: Colors.red, size: 49,),
                   SizedBox(width: 20,),
                   Text('Welcome to the family')

                 ],
                 ),
                 title: Text('Registered Successfully'),
            
                 elevation: 20,
                );
              }
              );
             }
             else {
               return showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                 content: Row(children: <Widget>[
                   Icon(Icons.warning, color: Colors.red, size: 49,),
                   SizedBox(width: 20,),
                   Text('Error')

                 ],
                 ),
                 title: Text('Enter valid Email address'),
                 contentPadding: EdgeInsets.all(30),
                 elevation: 20,
                );
              }
            );
             }
           }
           else {
             return showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                 content: Row(children: <Widget>[
                   Icon(Icons.warning, color: Colors.red, size: 49,),
                   SizedBox(width: 20,),
                   Text('Error')

                 ],
                 ),
                 title: Text('Please fill all fields'),
                 contentPadding: EdgeInsets.all(30),
                 elevation: 20,
                );
              }
            );
           }
          },
          color: Colors.red,
          child: Text('Register', style:  TextStyle(color: Colors.white)
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10,),
            logo,
            SizedBox(height: 13,),
            Container(
              margin: EdgeInsets.only(left: 18,bottom: 6),
              child: Text('UserName',
              style:  TextStyle(
                fontSize: 18,
              ),
              ),
            ),
            SizedBox(height: 6,),
            rFName,
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 18,bottom: 6),
              child: Text('Email',
              style:  TextStyle(
                fontSize: 18,
              ),
              ),
            ),
           
            SizedBox(height: 6,),
            rLName,
            SizedBox(height: 10,),
             Container(
              margin: EdgeInsets.only(left: 18,bottom: 6),
              child: Text('Phone Number',
              style:  TextStyle(
                fontSize: 18,
              ),
              ),
            ),
            SizedBox(height: 6,),
            phone,
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 18,bottom: 6),
              child: Text('Password',
              style:  TextStyle(
                fontSize: 18,
              ),
              ),
            ),
            SizedBox(height: 6,),
            pass,
            SizedBox(height: 15,),
            Column(
              children: <Widget>[
                SignUp,
              ],
            )
          ],
        ),
      ),
      
    );
  }
}