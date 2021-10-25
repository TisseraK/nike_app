import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  Home({Key key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 250, 250, 250),
                  Color.fromARGB(255, 255, 255, 255),
                  Color.fromARGB(255, 250, 250, 250),
                ],
              )
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.07,
                width: MediaQuery.of(context).size.width*0.90,
                child: Center(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.035,
                            width: MediaQuery.of(context).size.height*0.035,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'asset/image/one.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Text('Explorer', style: TextStyle(color: Color.fromARGB(255, 58, 99, 224),fontWeight: FontWeight.bold,fontSize:MediaQuery.of(context).size.height*0.03 ),),
                        ],),
                        GestureDetector(
                          onTap: (){

                          },
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'asset/image/two.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            height: MediaQuery.of(context).size.height*0.035,
                            width: MediaQuery.of(context).size.height*0.035,
                          ),
                        ),
                      ],
                    )
                ),

              ),
              Container(
                height: MediaQuery.of(context).size.height*0.065,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(1, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Recherche",
                        hintStyle: TextStyle(fontSize:MediaQuery.of(context).size.height*0.02 ),labelStyle: TextStyle(fontSize:MediaQuery.of(context).size.height*0.02 ),

                        prefixIcon: Icon(Icons.search),

                      ),
                    ),
                  ],
                )
              )
            ],
          ),
        )
    );
  }
}