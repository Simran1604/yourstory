import 'package:flutter/material.dart';

class GoogleButton extends StatefulWidget {
  const GoogleButton({ Key? key }) : super(key: key);

  @override
  _GoogleButtonState createState() => _GoogleButtonState();
}

class _GoogleButtonState extends State<GoogleButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border(bottom: BorderSide(color: Colors.grey),
              top: BorderSide(color: Colors.grey),
              left: BorderSide(color: Colors.grey),
              right: BorderSide(color: Colors.grey)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right:38.0),
                  child: Image(image: AssetImage('assets/google_logo.png'),
                  height: 40,
                  width: 40,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:38.0),
                  child: Text('Login with Google',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                ),
                ],
            ),
          );
  }
}