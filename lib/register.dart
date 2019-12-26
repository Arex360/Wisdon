import 'package:flutter/material.dart';
import 'login.dart';
class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}
var ShowPass = true;
double l = 50;
class _RegisterState extends State<Register> {
  @override
  final mykey = GlobalKey<FormState>();
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
      validator: (input)=> input.isEmpty ? "This field can't be empty": null,
      controller: fnameC,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'UserName',
        labelText: 'UserName',
        suffixIcon: Icon(Icons.people),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
      ),
    );

    final mailC = TextEditingController();
    final rLName = TextFormField(
      controller: mailC,
      validator: (input){
        if(input.isEmpty){
          return "This field can't be empty";
        }
        else if(!input.contains('@') && !input.contains('.com')){
          return "Enter valid Email";
        }
        else
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email Address',
        labelText: 'Email Address',
        suffixIcon: Icon(Icons.email),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
      ),
    );
    final phoneC = TextEditingController();
     final phone = TextFormField(
      validator: (input)=> input.isEmpty ? "This field can't be empty": null,
      controller: phoneC,
      keyboardType: TextInputType.number,
      autofocus: false,
      decoration: InputDecoration(
        labelText: 'Phone number',
        hintText: 'Phone Number',
        suffixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
      ),
    ); 
    final passC = TextEditingController();
     final pass = TextFormField(
       validator: (input){
        if(input.isEmpty){
          return "This field can't be empty";
        }
        else if(input.length < 6){
          return "Atleast 6 characters";
        }
        else
        return null;
      }, 
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      controller: passC,
      obscureText: ShowPass,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: IconButton(
                    onPressed: ()=> ShowPass = !ShowPass,
                    icon: Icon(Icons.vpn_key),
                  ),

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
            if(mykey.currentState.validate()){
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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
                    key: mykey,
                    child: ListView(
              children: <Widget>[
                SizedBox(height: 40,),
                logo,
                SizedBox(height: 30,),
                
                rFName,
                SizedBox(height: l,),
                rLName,
                SizedBox(height: l,),
                phone,          
                SizedBox(height: l,),
                pass,
                SizedBox(height: 35,),
                Column(
                  children: <Widget>[
                    SignUp,
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}