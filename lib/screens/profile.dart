import 'package:flutter/material.dart';
import 'package:flag/flag.dart';
class Profile extends StatefulWidget {
  Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
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
       body: ListView(
         children: <Widget>[
           SizedBox(height: 50,),
           Center(
             child: Column(
               children: <Widget>[
                 CircleAvatar(
                   backgroundImage: NetworkImage('https://a.wattpad.com/useravatar/Premium_lizaqake.256.52630.jpg'),
                   radius: 70,
                 ),
                 SizedBox(height: 10,),
                  Text('Muhammad Owais', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: <Widget>[
                     Container(
                       height: 80,
                       width: 80,
                       color: Colors.grey[300],
                       child: Column(
                         children: <Widget>[
                           SizedBox(height: 10,),
                           Text('Posts', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                           SizedBox(height: 6,),
                           Text('0', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                         ],
                       ),
                     ),
                     Container(
                       height: 80,
                       width: 100,
                       color: Colors.grey[300],
                       child: Column(
                         children: <Widget>[
                           SizedBox(height: 10,),
                           Text('Followers', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                           SizedBox(height: 6,),
                           Text('0', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                         ],
                       ),
                     ),
                     Container(
                       height: 80,
                       width: 110,
                       color: Colors.grey[300],
                       child: Column(
                         children: <Widget>[
                           SizedBox(height: 10,),
                           Text('Followings', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                           SizedBox(height: 6,),
                           Text('0', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                         ],
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 18,),
                  Material(
                    color: Colors.red,
                    child: MaterialButton(
                      minWidth: 40,
                      child: Container(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                             Icon(Icons.edit,color: Colors.white,),
                             Text('Edit Profile', style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      )
                    ),
                  )
               ],
             ),
           ),
           SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Table(
                      children: [
                        TableRow(
                          children: [
                            Text('Gender', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text('Male', style: TextStyle( fontSize: 18),)
                          ]
                        ),
                      ],
                    )
                  ),
                  SizedBox(height: 7,),
                  Container(
                    child: Table(
                      children: [
                        TableRow(
                          children: [
                            Text('Age', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text('17', style: TextStyle( fontSize: 18),)
                          ]
                        ),
                      ],
                    )
                  ),
                  SizedBox(height: 7,),
                  Container(
                    child: Table(
                      children: [
                        TableRow(
                          children: [
                            Text('Country', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Row(
                              children: <Widget>[
                                Flags.getFullFlag('PK', 20, 20),
                                SizedBox(width: 5,),
                                Text('Pakistan', style: TextStyle( fontSize: 18),),
                              ],
                            )
                          ]
                        ),
                      ],
                    )
                  ),
                  SizedBox(height: 7,),
                  Container(
                    child: Table(
                      children: [
                        TableRow(
                          children: [
                            Text('Phone Number', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text('+92 3146243325', style: TextStyle( fontSize: 18),)
                          ]
                        ),
                      ],
                    )
                  ),
                ],
              ),              
          )
         ],
       )
    );
  }
}