import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecondScreens/AboutUsScreen.dart';
import 'SecondScreens/MeaningASD.dart';
import 'SecondScreens/chickList.dart';
import 'SecondScreens/evalScreen.dart';
import 'SecondScreens/location/Home.dart';
import 'languageScreen.dart';


class MainHomePage extends StatelessWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(

        child:Stack(
        children: <Widget>[
          Container(
            color: Colors.blue.shade50,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text('Discover Their World',
                style: TextStyle(
                height: 1.8,
                 color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Tajawal'

              ),
              textAlign: TextAlign.center,),
            ),
          ),
          Container(
        margin:EdgeInsets.fromLTRB(0, 60, 0, 0),
             child: Container(
               decoration:BoxDecoration(
                   borderRadius: BorderRadius.circular(30)
               ),
               child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3/4,
                scrollDirection: Axis.vertical,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
            padding: EdgeInsets.all(10),
            children: <Widget>[
                InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => infoPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(image: AssetImage('assets/images/WhatIs.png')),
                      Divider(color: Colors.black,endIndent: 10,indent: 10,),
                      Text('About the Disease',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      textAlign: TextAlign.justify,)
                    ],
                  ),
                ),
              ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => chickList20()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(image: AssetImage('assets/images/checkList.png',),
                        height: 160,),
                        Divider(color: Colors.black,endIndent: 10,indent: 10,),
                        Text('Checklist for ASD',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(image: AssetImage('assets/images/locations.png')),
                        Divider(color: Colors.black,endIndent: 10,indent: 10,),
                        Text('Locations of ASD Centers in Oman',
                          textAlign:  TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),

                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>evalPage()));

                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(image: AssetImage('assets/images/rateApp.png')),
                      Divider(color: Colors.black,endIndent: 10,indent: 10,),
                      Text('Evaluate',textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),)
                    ],
                  ),
                ),
              ),
                InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>LangPage()));
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(image: AssetImage('assets/images/Language.png'),
                      fit: BoxFit.fitWidth,
                      width: 100,),
                      Divider(color: Colors.black,endIndent: 10,indent: 10,),
                      Text('Language/اللغة',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),)
                    ],
                  ),
                ),
              ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>AboutUs()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(image: AssetImage('assets/images/AboutUs.png')),
                        Divider(color: Colors.black,endIndent: 10,indent: 10,),
                        Text('About Us',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),)
                      ],
                    ),
                  ),
                ),

        ],),
             )

    ),

        ],
      ),
    ));
  }
}
