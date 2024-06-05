import 'package:flutter/material.dart';

import 'Course_Screen.dart';

class Home_Screen extends StatefulWidget {

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<String> catName = [
    "Category",
    "Classes",
    "Free Course",
    "Book Store",
    "Live Course",
    "Leader Board"
  ];

  List<Color> setColor = [
    Colors.blue.shade400,
    Colors.purple.shade400,
    Colors.green.shade400,
    Colors.indigo.shade400,
    Colors.teal.shade400,
    Colors.pink.shade400,
  ];

  List<Icon> setIcon = [
    Icon(Icons.category,color: Colors.white,size: 30,),
    Icon(Icons.video_library,color: Colors.white,size: 30,),
    Icon(Icons.assignment,color: Colors.white,size: 30,),
    Icon(Icons.store,color: Colors.white,size: 30,),
    Icon(Icons.play_circle_fill,color: Colors.white,size: 30,),
    Icon(Icons.emoji_events,color: Colors.white,size: 30,),
  ];

  List setImage = [
    "Flutter",
    "C++",
    "Dart",
    "Java",
    "Java Scripts",
    "Python"
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.shade200,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding : EdgeInsets.only(top: 15,left: 15,right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.dashboard,
                                size: 30,
                                color: Colors.white,
                              ),
                              Icon(
                                Icons.notifications_active,
                                size: 30,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.only(left: 15,top: 5),
                          child: Text("Hi, Programmer",style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: Colors.white
                          ),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search Here...',
                                  prefixIcon: Icon(Icons.search)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                    child: GridView.builder(
                        itemCount: catName.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1.1
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: setColor[index],
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child: setIcon[index]
                                ),
                              ),
                              SizedBox(height: 6),
                              Text("${catName[index]}",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),)
                            ],
                          );
                        }
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Course",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.black
                        ),),
                        Text("See All",style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.blueAccent
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(top: 10,left: 15,right: 15,bottom: 10),
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: setImage.length,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.77,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10
                        ),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Course_Screen()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black12
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Image.asset("assets/images/Flutter.png")
                                  ),
                                  SizedBox(height: 18,),
                                  Text("Flutter",style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18
                                  ),),
                                  Text("35 Videos",style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14
                                  ),),
                                ],
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}
