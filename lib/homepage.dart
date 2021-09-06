import 'package:flutter/material.dart';
import 'MyCard.dart';

class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  var inputcontroller=TextEditingController();
  var day="Today";


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
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Center(
              child: Container(
                height: 40,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
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
            height: MediaQuery.of(context).size.height/1.5,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children:[
                      Container(
                  decoration: BoxDecoration(color: Colors.white),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('September 06, 2021',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.5
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color:Colors.grey.shade100
                          ),
                          // width: 50,
                           height: 100,
                          child: DropdownButton<String>(items: <String>[
                            'Today',
                            'Yesterday',
                            '2 days ago'
                          ].map<DropdownMenuItem<String>>((String res){
                            return DropdownMenuItem<String>(
                              value: res,
                              child: Center(child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(res,style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                              )),);
                          }).toList(),
                          dropdownColor: Colors.grey.shade100,
                          value: day,
                          onChanged: ( newValue) {
                              setState(() {
                                 day = newValue!;
                              });
                            },
                          )
                        ),
                      ),
                      
                    ],
                  ),
                ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:5,horizontal:5.0),
                        child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width/1.1,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(bottom: BorderSide(color: Colors.grey.shade200),
                              top:BorderSide(color: Colors.grey.shade200),
                              left:BorderSide(color: Colors.grey.shade200),
                              right: BorderSide(color: Colors.grey.shade200))
                            ),
                            child: Row(
                              
                              children: [
                                Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Good Morning, XYZ ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600
                                    ),),
                                  ),
                                  
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: SizedBox(
                                      width: 250,
                                      child: Text("Here's the best of today, handpicked by our team of editors for you.",
                                        style: TextStyle(
                                          fontSize: 10,
                                          letterSpacing: 0.5,
                                          color: Colors.grey
                                        ),),
                                    ),
                                  ),
                                  
                                  
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Start My Day ',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.red
                                    ),),
                                  ),
                                ],
                              ),
                              Container(
                                height: 80,
                                width: 80,
                                child: Image.asset('assets/read.jpg'),
                              )],
                            ),

                          ),
                        
                      ),
                      Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:8.0),
                        child: Container(
                          decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                      ),
                      Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:8.0),
                        child: Container(
                          decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:8.0),
                        child: Container(
                          decoration: BoxDecoration(
                      border: Border(top:BorderSide(color: Colors.grey.shade300),
                      bottom: BorderSide(color: Colors.grey.shade300))
                    ),
                          child:myCard()
                        ),
                      )
              ]
            ),
          )
          ],
        ),
      ),
      
      bottomNavigationBar: Container(
        height: 42,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,

          selectedItemColor: Colors.red,
          iconSize: 18,

          unselectedItemColor: Colors.grey.shade400,
          showSelectedLabels: true,
          showUnselectedLabels: true,

          unselectedLabelStyle: TextStyle(
            color: Colors.grey.shade400,
            fontWeight: FontWeight.w500,
            fontSize: 10
            ),

            selectedLabelStyle: TextStyle(
              fontSize: 10,
              color: Colors.black,
              fontWeight: FontWeight.w500
            ),

            selectedIconTheme: IconThemeData(color: Colors.red),
            unselectedIconTheme: IconThemeData(color: Colors.grey .shade300),
          
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.house),
              label: 'Home',
              activeIcon: Icon(Icons.house,),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.videocam),
              label: 'Videos',
              activeIcon: Icon(Icons.videocam),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_work),
              label: 'Companies',
              activeIcon: Icon(Icons.home_work),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
              activeIcon: Icon(Icons.account_circle),
            )
          ],
        ),
      ),
      
    )
    );
  }

  
}