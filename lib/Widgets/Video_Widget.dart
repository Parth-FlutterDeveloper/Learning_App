import 'package:flutter/material.dart';

class Video_Widget extends StatelessWidget {
  const Video_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              spreadRadius: 3,
                          )
                        ]
                    ),
                    child: Center(
                      child: Icon(
                          Icons.play_arrow,
                          size: 37,
                          color: Colors.blueAccent
                      ),
                    ),
                  ),
                  title: Text("Introduction to Flutter",style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),),
                  subtitle: Text("20 min 50 sec",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54
                  ),),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 17),
              itemCount: 10
          ),
        ),
        SizedBox(height: 27),
      ],
    );
  }
}
