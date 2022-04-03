import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:AssetImage('assets/images/disBg.png',),
              fit: BoxFit.cover,
            ),

          ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
           Row(
             children: [
               IconButton(onPressed: (){
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context) => HomeScreen()));
               },
                   icon: Icon(Icons.navigate_before_outlined),
               iconSize: 50,
               color: Colors.white,
               alignment: Alignment.topLeft,),
             ],
           ),
            SizedBox(height: 250,
            child: Center(
              child: Text('HELLO, WE ARE FOURTH\nYEAR STUDENT.\n \nWELCME TO OUR \nAPPLICATION.',
              style: TextStyle(
                fontFamily: 'ZCOOLQing',
                fontSize: 40,
                color: Colors.white,

              ),
                  textAlign: TextAlign.center,
              ),
            ),),
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                color:Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget>[
                       Container(
                         margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                       width: 330,
                       height: 150,
                       decoration: BoxDecoration(
                         gradient: LinearGradient(
                           colors: <Color>[
                             Color(0xFF197EC2),
                         Color(0xFF0F4A72),

                           ]
                         ),

                         //
                         borderRadius: BorderRadius.circular(30),
                       ),
                       child: Center(
                           child: Text('DO YOU HAVE CHILD WITH \n AUTISM DISORDER?',
                             style: TextStyle(
                               fontFamily: 'ZCOOLQing',
                               fontSize: 30,
                               color: Colors.white,
                             ),
                           textAlign: TextAlign.center,),
                       ),
                     ),
                  SizedBox(height: 65,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 120,
                          height: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xFF197FBB),
                            borderRadius: BorderRadius.circular(10)
                          ),

                          child: Text('Yes',
                            style: TextStyle(
                              fontFamily: 'ZCOOLQing',
                              fontSize: 30,
                              color: Colors.black,

                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 120,
                          height: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xFF197FBB),
                              borderRadius: BorderRadius.circular(10)
                          ),

                          child: Text('No',
                            style: TextStyle(
                              fontFamily: 'ZCOOLQing',
                              fontSize: 30,
                              color: Colors.black,

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


              ],),
            ),

          ],
        ),

        )
        )
    );
  }
}
