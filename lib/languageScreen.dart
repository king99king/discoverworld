import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MainHomeScreen.dart';

class LangPage extends StatelessWidget {
  const LangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       body: Container(
         height: double.infinity,
         width: double.infinity,
         decoration: BoxDecoration(
           color: Color(0xFF0871AF),
           image: DecorationImage(
             image: AssetImage("assets/images/discover.jpeg"),
             fit: BoxFit.cover,
           ),
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget> [

            /* Padding(
               padding: const EdgeInsets.only(right: 120),
               child: Text('Discover There World',
                 style: TextStyle(
                   fontFamily: 'ZCOOLQing',
                   fontSize: 30,
                   color: Color(0xFFD4FFE0),
                 ),
                 textAlign: TextAlign.left,),
             ),
             SizedBox(height: 50,),
             Padding(
               padding: const EdgeInsets.only(left: 160),
               child: Text('اكتشف عالمهم',
                 style: TextStyle(
                   fontFamily: 'Tachkili',
                   fontSize: 30,
                   color: Color(0xFFD4FFE0),
                 ),
                 textAlign: TextAlign.left,),
             ),*/
             SizedBox(height: 80,),
             /*Container(
               width: 250,
               height: 140,
               decoration: BoxDecoration(
                 color: Color(0xFFD4FFE0),
                 borderRadius: BorderRadius.circular(20)
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: <Widget>[
                   Text('Choose Language',style: TextStyle(
                     color: Colors.black,
                     fontSize: 20,
                   ),),
                   Divider(height: 10,indent:50,endIndent: 50,color: Colors.black,thickness: 2,),
                   Text('إختر اللغة',style: TextStyle(
                     color: Colors.black,
                     fontSize: 20,
                   ),)

                 ],
               ),

             ),*/

             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.of(context).pushReplacement(MaterialPageRoute(
                         builder: (BuildContext context) =>MainHomePage()));
                   },
                   child: Container(
                     width: 120,
                     height: 60,
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                         color: Colors.blue.shade100,
                         borderRadius: BorderRadius.circular(10)
                     ),

                     child: Text('English',
                       style: TextStyle(

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
                     height: 60,
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                         color: Colors.blue.shade100,
                         borderRadius: BorderRadius.circular(10)
                     ),

                     child: Text('العربية',
                       style: TextStyle(
                         fontSize: 30,
                         color: Colors.black,

                       ),
                     ),
                   ),
                 ),
               ],
             ),
             SizedBox(height: 100,),],
         ),
       ),
    );
  }
}
