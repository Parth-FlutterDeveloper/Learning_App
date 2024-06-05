import 'package:flutter/material.dart';
import 'package:flutter_pro_4/Screens/Payment_Screen.dart';

class Cart_Screen extends StatelessWidget {
  const Cart_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.blue,
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Cart",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                    color: Colors.blue
                  ),),
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              child: ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 180,
                      margin: EdgeInsets.only(left: 13,right: 13,bottom: 20),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                            height: MediaQuery.of(context).size.height,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Image.asset("assets/images/Flutter.png"),
                          ),
                          Container(
                            margin: EdgeInsets.all(11),
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width / 2.2,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20,top: 10),
                                  child: Text("Flutter",style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text("Created by Dear Programmer",style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    color: Colors.black54
                                  ),),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text("55 Videos",style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54
                                  ),),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: Text("\$89",style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black
                                      ),),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue.shade200
                                      ),
                                      child: Icon(
                                          Icons.delete,
                                        size: 25,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 7,),
                  itemCount: 6
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 98,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          )
        ),
        margin: EdgeInsets.only(left: 10,right: 10),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 23),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Payment_Screen() ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Make Payment",style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text("\$89",style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
