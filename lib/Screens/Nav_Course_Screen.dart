import 'package:flutter/material.dart';
import 'package:flutter_pro_4/Screens/Cart_Screen.dart';
import 'package:flutter_pro_4/Widgets/Free_Course_Widget.dart';
import 'package:flutter_pro_4/Widgets/Paid_Course_Widget.dart';

class Nav_Course_Screen extends StatefulWidget {
  const Nav_Course_Screen({super.key});

  @override
  State<Nav_Course_Screen> createState() => _Nav_Course_ScreenState();
}

class _Nav_Course_ScreenState extends State<Nav_Course_Screen> {

  int selectedIndex = 0;

  final screen = [
    Paid_Course_Widget(),
    Free_Course_Widget()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Course List",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 9),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Cart_Screen() ));
                    },
                    icon: Icon(
                      Icons.shopping_bag,
                      size: 27,
                      color: Colors.blue,
                    ),
                  )
                ),
              ],
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
                        child: Text("Paid Courses",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: selectedIndex == 0
                                ? Colors.white
                                : Colors.black,
                            fontSize: 21
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
                        child: Text("Free Courses",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: selectedIndex == 1
                                ? Colors.white
                                : Colors.black,
                            fontSize: 21
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
