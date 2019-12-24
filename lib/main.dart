/*
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Scaffold(
    body: Center(
      child: RaisedButton(
        onPressed: _launchURL,
        child: Text('Show Flutter homepage'),
      ),
    ),
  ));
}

_launchURL() async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}



*/
import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
void main()=> runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.red,
    ),    
    home: Page()
)
);
class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello2'),
      ),
    );
  }
}
