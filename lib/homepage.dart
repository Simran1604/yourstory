import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  var inputcontroller=TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red.shade50
        ),
        tabBarTheme: TabBarTheme(
          
          unselectedLabelColor: Colors.grey.shade400,
          labelColor: Colors.red,
          labelStyle: TextStyle(
            fontSize: 12,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.blueGrey.shade100,
            fontSize: 9
          ),
        )
      ),
      home:Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('YOURSTORY',
          style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
        ),
        actions: [Icon(Icons.bookmark,color: Colors.black,),
        Icon(Icons.search,color: Colors.black,)],
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 40,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border(bottom: BorderSide(color: Colors.grey.shade400),
                  top:BorderSide(color: Colors.grey.shade400),
                  right:BorderSide(color: Colors.grey.shade400),
                  left:BorderSide(color: Colors.grey.shade400),
                  )
                  ),
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    cursorColor: Colors.grey,
                    cursorHeight: 15,
                    onTap: (){
                      inputcontroller.clear();
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      
                      hintText: 'Search articles, videos, companies here',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 10
                      ),
                      suffixIcon: Icon(Icons.search_outlined,color:Colors.grey.shade400,size: 20,)
                    ),
                  ),
                ),
              ),
            ),
          Container(
              height: 50,
              decoration: BoxDecoration(color: Colors.white),
              child:DefaultTabController(length: 3,
                  child: TabBar(tabs:[
                    Text('Top Picks'),
                    Text('Latest News'),
                    Text('For You'),
                  ],
                  labelStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 13.5,
                    fontWeight: FontWeight.bold
                  ),
                  unselectedLabelStyle: TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 9,
                  ),
                  indicatorColor: Colors.white,
                  
                  ),
                ),
            ),
          Container(
            height: MediaQuery.of(context).size.height/1.4,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children:[
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                    children: [
                      Text('September 05, 2021',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13.5
                      ),),
                      Container(
                        width: 60,
                        height: 50,
                        child: DropdownButton<String>(items: <String>[
                          'Today',
                          'Yesterday',
                          '2 days ago'
                        ].map<DropdownMenuItem<String>>((String res){
                          return DropdownMenuItem<String>(
                            value: res,
                            child: Center(child:Text(res,style: TextStyle(fontSize: 8),)),);
                        }).toList(),
                        dropdownColor: Colors.grey.shade300,
                        
                        )
                      )
                    ],
                  ),
                )
              ]
            ),
          )
          ],
        ),
      ),
    )
    );
  }
}