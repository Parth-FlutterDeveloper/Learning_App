import 'package:flutter/material.dart';

class Watchlist_Screen extends StatelessWidget {
  const Watchlist_Screen({super.key});

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
              child: Text("Watch List",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView.separated(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 325,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.blue.shade200
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Colors.white,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 13),
                                child: Text("Flutter Course",style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  size: 27,
                                  color: Colors.black
                                ),
                                onPressed: () {},
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 13),
                            child: Text("Created by Dear Programmer",style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 13),
                            child: Text("55 Videos",style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),),
                          ),
                        ],
                      )
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 20),
                  itemCount: 4
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
