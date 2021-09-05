import 'package:flutter/material.dart';

class FacebookButton extends StatefulWidget {
  const FacebookButton({ Key? key }) : super(key: key);

  @override
  _FacebookButtonState createState() => _FacebookButtonState();
}

class _FacebookButtonState extends State<FacebookButton> {
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
                  child: Image(image: AssetImage('assets/facebook_logo.png'),
                  height: 20,
                  width: 20,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:38.0),
                  child: Text('Login with Facebook',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                ),
                ],
            ),
          );
  }
}