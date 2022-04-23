import 'package:discoverworld/ArabicFiles/MainHomeScreen_AR.dart';
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
             SizedBox(height: 80,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     // Navigator.of(context).pushReplacement(MaterialPageRoute(
                     //     builder: (BuildContext context) =>MainHomePage()));
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
                   onTap: (){
                     Navigator.of(context).pushReplacement(MaterialPageRoute(
                         builder: (BuildContext context) =>MainHomePage_AR()));
                   },
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
