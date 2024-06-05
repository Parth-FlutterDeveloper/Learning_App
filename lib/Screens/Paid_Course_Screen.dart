import 'package:flutter/material.dart';

class Paid_Course_Screen extends StatelessWidget {
  const Paid_Course_Screen({super.key});

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
            SizedBox(height: 1),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 23),
                  child: Text("Course Fees  #  ",style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Text("\$88",style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
            SizedBox(height: 27),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23),
              child: Text("Learn how to use Flutter in this complete course for beginners. Flutter is an open-source UI software development kit used  to create cross-platform applications",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                  color: Colors.black54
                ),),
            ),
            SizedBox(height: 27),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Course Lenght :",style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                  ),),
                  SizedBox(width: 20),
                  Icon(Icons.watch_later,color: Colors.blue,size: 27),
                  SizedBox(width: 5),
                  Text("36 Hours",style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                  ),),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Rating :",style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                  ),),
                  SizedBox(width: 20),
                  Icon(Icons.star,color: Colors.amber,size: 27),
                  SizedBox(width: 5),
                  Text("4.5",style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                  ),),
                ],
              ),
            ),
            SizedBox(height: 35),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 23),
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Colors.blueAccent
                ),
                child: Center(
                  child: Text("Add To Cart",style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
