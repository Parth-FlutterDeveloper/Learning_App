import 'package:flutter/material.dart';

class Account_Screen extends StatelessWidget {
  const Account_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Student Account",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),),
            ),
            Container(
              height: 240,
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.blue.shade200,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 3,
                    blurRadius: 8
                  )
                ]
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            spreadRadius: 3
                          )
                        ]
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.black54,
                        size: 70,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text("Patel Parthkumar",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Colors.black
                    ),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.only(left: 23),
                child: Text("Personal Info",style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade500
                ),)
            ),

            SizedBox(height: 25),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Name :",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                  Text("Patel Parthkumar",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.black,height: 15,),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Father Name :",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                  Text("Mahendrabhai",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.black,height: 15,),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Boold Group :",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                  Text("O+",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.black,height: 15,),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gender :",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                  Text("Male",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.black,height: 15,),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mobile Number :",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                  Text("63538 39084",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.black,height: 15,),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pincode :",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                  Text("394101",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.black,height: 15,),
            ),

            SizedBox(height: 25),

            Padding(
                padding: EdgeInsets.only(left: 23),
                child: Text("Educational Info",style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  color: Colors.blue.shade500
                ),)
            ),

            SizedBox(height: 25),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Enrollment No :",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                  Text("",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.black,height: 15,),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("SID :",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                  Text("",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.black,height: 15,),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Division :",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                  Text("8",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.black,height: 15,),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Roll No :",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                  Text("808",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.black,height: 15,),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Course :",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                  Text("BCA",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.black,height: 15,),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
