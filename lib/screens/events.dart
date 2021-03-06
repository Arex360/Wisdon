import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  Events({Key key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Event and News'),
        actions: <Widget>[
           Material(
             color: Colors.red,
             child: MaterialButton(
               onPressed: (){ 
                 Navigator.pop(context);
              return showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                 content: Row(children: <Widget>[
                   Icon(Icons.check_circle_outline, color: Colors.red, size: 49,),
                   SizedBox(width: 20,),
                   Text('GoodLuck')

                 ],
                 ),
                 title: Text('Logged out successfully'),
                 contentPadding: EdgeInsets.all(30),
                 elevation: 20,
                );
              }
            );  
        },
               child: Row(
             children: <Widget>[
               Text('Sign out', style: TextStyle(color: Colors.white),),
               SizedBox(width: 4,),
               Icon(Icons.account_circle, color: Colors.white,)
             ],
           ),
             ),
           )
        ],
      ),
       drawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                height: 40,
                padding: EdgeInsets.all(10),
                color: Colors.grey[220],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(Icons.filter_tilt_shift, color: Colors.red, size: 25,),
                    Text('Welcome to Wisdon Network', style: TextStyle(fontSize: 17),)
                  ],
                )
              ),
              Container(
                child: Image(
                  image: AssetImage('Assets/mainIcon.png'),
                ),
              ),
              SizedBox(height: 40,),
               Material(
                 child: MaterialButton(
                     onPressed: (){
                       print('ssh');
                     },
                     child: Row(
                  children: <Widget>[
                  Icon(
                   Icons.chat,
                  size: 32,
                  color: Colors.white,
                 ),
                SizedBox(width: 10,),
                  Text(
                   'Chat',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  )
                  ],
                ),  
                 ),
                 color: Colors.red,
               ),
               SizedBox(height: 17,),

                Material(
                 child: MaterialButton(
                     onPressed: (){
                       print('ssh');
                     },
                     child: Row(
                  children: <Widget>[
                  Icon(
                   Icons.people,
                  size: 32,
                  color: Colors.white,
                 ),
                SizedBox(width: 10,),
                  Text(
                   'Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  )
                  ],
                ),  
                 ),
                 color: Colors.red,
               ),
               SizedBox(height: 17,),

                Material(
                 child: MaterialButton(
                     onPressed: (){
                       print('ssh');
                     },
                     child: Row(
                  children: <Widget>[
                  Icon(
                   Icons.attach_money,
                  size: 32,
                  color: Colors.white,
                 ),
                SizedBox(width: 10,),
                  Text(
                   'Contribute',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  )
                  ],
                ),  
                 ),
                 color: Colors.red,
               ),
               SizedBox(height: 17,),

                Material(
                 child: MaterialButton(
                     onPressed: (){
                       print('ssh');
                     },
                     child: Row(
                  children: <Widget>[
                  Icon(
                   Icons.speaker_group,
                  size: 32,
                  color: Colors.white,
                 ),
                SizedBox(width: 10,),
                  Text(
                   'Support and Report',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  )
                  ],
                ),  
                 ),
                 color: Colors.red,
               )



            ],
          )
        )
      ),
       body: SafeArea(
         child: ListView(
           children: <Widget>[
             SizedBox(height: 7,),
             Image(
               image: AssetImage('Assets/01.png'),
               height: 200,
               width: 200,
             ),
             SizedBox(height: 10,),
             Image(
               image: AssetImage('Assets/02.png'),
               height: 200,
               width: 200,
             ),
             SizedBox(height: 10,),

             Image(
               image: AssetImage('Assets/03.png'),
               height: 200,
               width: 200,
               
             ),
             SizedBox(height: 10,),

             Image(
               image: AssetImage('Assets/04.png'),
               height: 200,
               width: 200,
             ),
             SizedBox(height: 10,),
             Image(
               image: AssetImage('Assets/05.png'),
               height: 200,
               width: 200,
             ),
             SizedBox(height: 10,),
             Image(
               image: AssetImage('Assets/06.png'),
               height: 200,
               width: 200,
             ),
             SizedBox(height: 10,),
           ],
         ),
       )
    );
  }
}