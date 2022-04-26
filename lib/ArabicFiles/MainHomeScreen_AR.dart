import 'package:discoverworld/ArabicFiles/AboutUs_AR.dart';
import 'package:discoverworld/ArabicFiles/evalScreen_AR.dart';
import 'package:discoverworld/ArabicFiles/lacation_AR/Home_AR.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../languageScreen.dart';
import 'MeaningASD_AR.dart';
import 'checkList_AR.dart';



class MainHomePage_AR extends StatelessWidget {
  const MainHomePage_AR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showAlertDialog(context));
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
                  child: Text('إكتشف عالمهم',
                    textDirection: TextDirection.rtl,
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
                    height: MediaQuery.of(context).size.height,
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
                                 MaterialPageRoute(builder: (context) => infoPage_AR()));
                          },
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
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
                                  Text('حول اضطراب طيف التوحد',
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => chickList20_AR()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade300,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(image: AssetImage('assets/images/checkList.png',),
                                    height: 160,),
                                  Divider(color: Colors.black,endIndent: 10,indent: 10,),
                                  Text('قائمة التحقق من اضطراب طيف التوحد',
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                             Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Home_AR()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade300,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(image: AssetImage('assets/images/locations.png')),
                                  Divider(color: Colors.black,endIndent: 10,indent: 10,),
                                  Text('مواقع لمراكز في سلطنة عمان لعلاج اضطراب طيف التوحد',
                                    textDirection: TextDirection.rtl,
                                    textAlign:  TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.bold,
                                    ),

                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                             Navigator.push(context,
                                 MaterialPageRoute(builder: (context)=>evalPage_AR()));

                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade300,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(image: AssetImage('assets/images/rateApp.png')),
                                  Divider(color: Colors.black,endIndent: 10,indent: 10,),
                                  Text('قائمة التقييم للبرنامج وغيرها',
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.bold,
                                    ),)
                                ],
                              ),
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
                            child: SingleChildScrollView(
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
                                      fontFamily: 'Tajawal',
                                      fontWeight: FontWeight.bold,
                                    ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>AboutUs_AR()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.blue.shade300,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image(image: AssetImage('assets/images/AboutUs.png')),
                                  Divider(color: Colors.black,endIndent: 10,indent: 10,),
                                  Text('معلومات عن القائمين على البرنامج',
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),)
                                ],
                              ),
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

showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("حسناً"),
    onPressed: ()=> Navigator.pop(context),

  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.blue.shade50,
    title: Text("تنبيه!",
        textDirection: TextDirection.rtl,
        style: TextStyle(
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.bold)),
    content: Text("هذا التطبيق يهدف لزيادة الوعي بمرض التوحد ومن خلاله يمكنك تقييم طفلك إذا كان لديه أي من الأعراض ، ولكن لا تعتمد عليه إعتماد كلي ويجب عليك مراجعة أقرب مركز صحي لتشخيص طفلك.",
      textAlign: TextAlign.justify,
      textDirection: TextDirection.rtl,
      style: TextStyle(
          fontFamily: 'Tajawal',
          fontWeight: FontWeight.bold,
          height: 1.8
      ),),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}