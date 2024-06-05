import 'package:flutter/material.dart';

class Description_Widget extends StatelessWidget {
  const Description_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 13),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: Text("Learn how to use Flutter in this complete course for beginners. Flutter is an open-source UI software development kit used  to create cross-platform applications",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),),
        ),
        SizedBox(height: 17),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Course Lenght :",style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 20),
              Icon(Icons.watch_later,color: Colors.blue,size: 27),
              SizedBox(width: 5),
              Text("36 Hours",style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),
        ),
        SizedBox(height: 7),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Rating :",style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 20),
              Icon(Icons.star,color: Colors.amber,size: 27),
              SizedBox(width: 5),
              Text("4.5",style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),
        )
      ],
    );
  }
}
