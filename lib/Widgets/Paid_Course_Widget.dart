import 'package:flutter/material.dart';
import 'package:flutter_pro_4/Screens/Paid_Course_Screen.dart';

class Paid_Course_Widget extends StatelessWidget {
  const Paid_Course_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemCount: 7,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.77
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Paid_Course_Screen() ));
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
              },
          ),
        )
      ],
    );
  }
}
