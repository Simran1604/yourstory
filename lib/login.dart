import 'package:flutter/material.dart';
import 'package:yourstory/FacebookButton.dart';
import 'package:yourstory/GoogleButton.dart';

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical:20,horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom:80.0),
                child: Text(
                    'YOURSTORY',style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold,letterSpacing: 0),
                  ),
              ),
                // SizedBox(
                //   height: 100,
                // ),
                Text(
                  'Startup India on your ',
                  style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.5
                  ),
                ),
                Text('fingertips',
                style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 1.5
                  ),),
                SizedBox(height: 50,),
                GoogleButton(),
                SizedBox(height:20),
                FacebookButton(),
                SizedBox(height: 80,),
                Text.rich(
                TextSpan(
                  text: 'By signing up for YourStory you agree to the ',
                  style: TextStyle(fontSize: 8,color: Colors.grey,fontWeight: FontWeight.w600),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Terms of services',
                        style: TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.underline,fontWeight: FontWeight.w600
                        )),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  text: ' and  ',
                  style: TextStyle(fontSize: 8,color: Colors.grey,fontWeight: FontWeight.w600),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.underline,fontWeight: FontWeight.w600
                        )),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  text:'of the platform.',
                   style: TextStyle(fontSize: 8,color: Colors.grey,fontWeight: FontWeight.w600),
                )
              )              
              ],
              
          ),
        ),
        
      ),
    );
  }
}