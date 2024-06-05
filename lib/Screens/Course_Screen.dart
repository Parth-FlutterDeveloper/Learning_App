import 'package:flutter/material.dart';
import 'package:flutter_pro_4/Widgets/Description_Widget.dart';
import 'package:flutter_pro_4/Widgets/Video_Widget.dart';

class Course_Screen extends StatefulWidget {
  const Course_Screen({super.key});

  @override
  State<Course_Screen> createState() => _Course_ScreenState();
}

class _Course_ScreenState extends State<Course_Screen> {

  int selectedIndex = 0;

  final screen = [
    Video_Widget(),
    Description_Widget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 100,
        centerTitle: true,
        title: Text("Flutter",style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 30,
        ),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 17),
              child: Icon(Icons.notifications,
              color: Colors.blueAccent,size: 30,)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(11),
                image: DecorationImage(
                  image: AssetImage("assets/images/Flutter.png"),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 3,
                    blurRadius: 8
                  )
                ]
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 3,
                            blurRadius: 8
                        )
                      ]
                  ),
                  padding: EdgeInsets.all(7),
                  child: Icon(
                    Icons.play_arrow,
                    size: 40,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 23),
                  child: Text("Flutter Course",style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 23),
                  child: Icon(Icons.favorite_border,size: 27,)
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 23),
              child: Text("Created by Dear Programmer",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                color: Colors.black54
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 23),
              child: Text("55 Videos",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
              ),),
            ),
            SizedBox(height: 9),
            InkWell(
              onTap: () {},
              child: Container(
                width: 150,
                margin: EdgeInsets.symmetric(horizontal: 23),
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.blueAccent
                ),
                child: Center(
                  child: Text("Add Watchlist",style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(7),
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.black12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.4,
                      decoration: BoxDecoration(
                        color: selectedIndex == 0
                          ? Colors.blueAccent
                          : Colors.white,
                        borderRadius: BorderRadius.circular(11)
                      ),
                      child: Center(
                        child: Text("Videos",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == 0
                            ? Colors.white
                            : Colors.black,
                          fontSize: 23
                        ),),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.4,
                      decoration: BoxDecoration(
                          color: selectedIndex == 1
                              ? Colors.blueAccent
                              : Colors.white,
                          borderRadius: BorderRadius.circular(11)
                      ),
                      child: Center(
                        child: Text("Description",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: selectedIndex == 1
                                ? Colors.white
                                : Colors.black,
                            fontSize: 23
                        ),),
                      ),
                    ),
                  )
                ],
              ),
            ),
            screen[selectedIndex],
          ],
        ),
      ),
    );
  }
}
