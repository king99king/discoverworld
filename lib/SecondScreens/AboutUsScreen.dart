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
              title: const Text('About Us'),
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
                  'Discover their world application was developed by nursing students at Oman College of Health Science- North Batinah (OCHS-NB ) ,batch of 2022, group (1) as an idea to their graduation project .  The aim of this application is to raise awareness of Autism Spectrum Disorder awareness and prompts early diagnosis.'

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
                      '👨‍⚕️1.Ayoob\n'
                      '👩‍⚕️2.abir',
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

             Row( children: <Widget>[
               Container(
                   child:InkWell(
                     onTap: () async{
                       final toEmail='ayoob12441@gmail.com';
                       final subject='E-mail From ASD app ';
                       final message='Hello ';
                       final url='mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';
                       if(await canLaunch(url)){
                         await launch(url);
                       }
                     },
                     child:Icon(Icons.email_rounded,color: Colors.blue,),
                   ),
               ),
             ],
             )
            ],
          )
        ),
    );
  }
}
