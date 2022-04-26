import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
            appBar: AppBar(
              title: const Text('About Us',
              style: TextStyle(
                  fontFamily: 'Tajawal'
              ),),
              leading: IconButton(
                icon:Icon( Icons.arrow_back,),
                onPressed: ()=>Navigator.pop(context),
              ),
              backgroundColor: Colors.blue,
            ),
          body:ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(image: AssetImage(
                  'assets/images/AboutUs.png'
                )),
              ),
             SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple.shade100,
              ),
              height: 300,
              width: double.infinity,
              child: Text(
                'About the app:\n \n'
                  'We are Fourth year students from Oman College of Health Sciences and this is our graduation project. Our aim is The aim of the project is to increase the awareness level of the community and caregivers on the early signs of ASD to prompt diagnosis of autism spectrum disorder among children from 0-2 years old through mobile application development.'

              ,textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Tajawal'
              ),),

            ),

            Card(
              color: Colors.deepPurple.shade400,
              child: ExpandableNotifier(
               child: Card(
                 color: Colors.deepPurple.shade50,
                 child: ScrollOnExpand(
                  child:   ExpandablePanel(
                    theme: ExpandableThemeData(

                      expandIcon: Icons.arrow_circle_down_rounded,
                      collapseIcon: Icons.arrow_circle_up_rounded,
                      tapBodyToCollapse: true,
                      tapBodyToExpand: true,
                      iconColor: Colors.red,
                    ),
                    //+++++++++++++++++++++++++++++++++++++++++++++++++++
                    header:Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Team Members:',
                        style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    //+++++++++++++++++++++++++++++++++++++++++++++++++++
                    collapsed:Container(
                      child: Text(
                        'Names:',
                        style: TextStyle(

                          fontFamily: 'Tajawal',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,),
                    ),
                    //+++++++++++++++++++++++++++++++++++++++++++++++++
                    expanded:Text(
                      '👩‍⚕️1.Aisha Khalifa Rashid Al-Maamari\n'
                      '👩‍⚕️2.Fatma Abdullah Issa Al-Mahairzi\n'
                      '👨‍⚕️3.Faras Yahya Khalfan Al-Maqbali\n'
                      '👩‍⚕️4.Hadil Ali Ibrahim Al-Balushi\n'
                      '👩‍⚕️5.Manar Majed Said Al-Darmaki\n'
                      '👩‍⚕️6.Maryam Abdullah Al-Kumzari\n'
                      '👨‍⚕️7.Mohammed Ali Al-Amrani\n'
                      '👩‍⚕️8.Rihab Ahmed Nasser Al-Eisaei\n'
                      '👩‍⚕️9.Shua’a Mohammed Al-Mammari\n'
                      '👩‍⚕️10.Wafa Mohammed Al-Maqbali\n'
                      '👩‍⚕️11.Zakiya Ali Hamdan Al-Dahouri\n'
                    ,
                      style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 1,
                      height: 1.5,),
                      textAlign: TextAlign.justify,
                    ),
                    //++++++++++++++++++++++++++++++++++++++++++++++++++
                    builder: (_,collapsed,expanded)=>Padding(
                      padding: EdgeInsets.all(12).copyWith(top: 10),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                      ),
                    ),
                  ),
             ),
               ),
        )),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: <Widget>[
                 
               Container(
                 margin: EdgeInsets.all(10),
                   child:InkWell(
                     onTap: () async{
                       final toEmail='fatooomabdullah18@gmail.com';
                       final subject='E-mail From ASD app ';
                       final message='Hello ';
                       final url='mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';
                       if(await canLaunch(url)){
                         await launch(url);
                       }
                     },
                     child:Icon(Icons.email_rounded,color: Colors.blue,size: 50,),
                   ),
               ),
               Container(
                 margin: EdgeInsets.all(10),
                 child:InkWell(
                   onTap: () {
                     launch("tel: 90455663");
                   },
                   child:Icon(Icons.phone_enabled_rounded,color: Colors.blue,size: 50,),
                 ),
               ),


             ],
             ),
              Divider(color: Colors.black, endIndent: 30,indent: 30,height: 1,thickness: 0.75),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.all(10),
                    child:InkWell(
                      onTap: () async{
                        final toEmail='Fars10137@gmail.com';
                        final subject='E-mail From ASD app ';
                        final message='Hello ';
                        final url='mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';
                        if(await canLaunch(url)){
                          await launch(url);
                        }
                      },
                      child:Icon(Icons.email_rounded,color:  Colors.deepPurple.shade400,size: 50,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child:InkWell(
                      onTap: () {
                        launch("tel: 94039793");
                      },
                      child:Icon(Icons.phone_enabled_rounded,color:  Colors.deepPurple.shade400,size: 50,),
                    ),
                  ),


                ],
              ),
              SizedBox(height: 20,),
              Container(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                   Icon(Icons.copyright_outlined, size: 30),
                   Text('All Rights Reserve',
                   style: TextStyle(
                     fontFamily: 'Tajawal',
                     fontSize: 25,
                   ),)
            ]
          ),),
              SizedBox(height: 20,)
            ],
          )
        ),
    );
  }
}
