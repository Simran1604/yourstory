import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yourstory/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YOURSTORY',
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,}) : super(key: key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'YOURSTORY',style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 0),
            ),
            SizedBox(height: 20,),
            Text(
              'For the Entrepreneur in You',
              style: TextStyle(letterSpacing: 1,fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 60,),
            Container(
              width: 100,
              height: 10,
              child: LinearProgressIndicator(color: Colors.red.shade100,backgroundColor: Colors.red,)
            )              
              
          ],
        ),
      ), 
    );
  }
}