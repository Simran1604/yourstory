import 'package:flutter/material.dart';

class myCard extends StatefulWidget {
  const myCard({ Key? key }) : super(key: key);
  
  @override
  _myCardState createState() => _myCardState();
}

class _myCardState extends State<myCard> {
  
  @override
  Widget build(BuildContext context) {
    
    Widget background(){
      return Container(
        decoration: BoxDecoration(
          color:Colors.white
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/2.1,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/card.jpg'
              ,fit: BoxFit.fill,),
            )
          ],
        ),
      );
    }

    Widget article(){
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300),
                      left: BorderSide(color: Colors.grey.shade300))
                    
        ),
        width: MediaQuery.of(context).size.width/1.05,
        child:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('Sep 06, 2021',
                  style: TextStyle(
                    fontSize: 8,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                    color:Colors.grey.shade900,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(Icons.watch_later_outlined,color:Colors.grey.shade900,size: 9,),
                      ),
                      Text('11 min read',
                      style: TextStyle(
                          fontSize: 8,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                          color:Colors.grey.shade900,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:14.0),
              child: Text("What the current IPO boom means for the Indian startup ecosystem",
                style: TextStyle(
                  color:Colors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 12
                ),),
            ),
    
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:14.0),
              child: Text('With multiple Indian startupd filing for an IPO, YourStory dives into what this means for the ecosystem, and how it will help bring in even more capital.',
                style: TextStyle(
                  color:Colors.grey.shade600,
                  letterSpacing: 1,
                  fontSize: 12
                ),),
            ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text('Article',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10
                    ),),
                  ),
                  Row(
                    children: [
                        Icon(Icons.bookmark_border,color: Colors.black,size:15,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.share_outlined,color: Colors.black,size:15,),
                      )
                    ],
                  )
                ],
              )              
          ],
        ) ,
      );
    }

    
    return Stack(
      alignment:AlignmentDirectional.bottomEnd,
      children: [
        background(),
      Padding(
        padding: const EdgeInsets.only(bottom:8.0),
        child: article(),
      ),
      ],
      
    );

  }
}