import 'package:discoverworld/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'WellcomeScreen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image:AssetImage('assets/images/discover.jpeg',),
              fit: BoxFit.cover,
            ),

          ),

            child: Stack(
              children:[


                Positioned(

                  top: 630,
                  right:90,
                  child: FlatButton(

                      color: Colors.white,
                      height: 60,
                      minWidth: 200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),

                      onPressed:(){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => WelcomePage()));

                      },
                      child: Row(
                        children:[
                          Text('Discover',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontFamily: 'ZCOOLQing',
                              )),
                          SizedBox(width: 10,),
                          Icon(Icons.navigate_next,
                              size:50,
                              color: Colors.black),
                        ],
                      )

                  ),
                ),

              ],
              overflow:Overflow.clip,

            )
        ),

    );
  }
}







