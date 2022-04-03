import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class infoPage extends StatelessWidget {
  const infoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          appBar: AppBar(
            title: const Text('ASD'),
            leading: IconButton(
              icon:Icon( Icons.arrow_back,),
              onPressed: ()=>Navigator.pop(context),
            ),
            backgroundColor: Colors.blue,
          ),
          body: ListView(
            children:[
                buildCard(
                  '  📎Meaning:',
                  'assets/images/WhatIs.png',
                    '👉 Autism Spectrum Disorder (ASD)',
                    '•A complex set of brain function disorders, characterized by poor social behavior, communication and language skills with limited interests and activities.'                ),
              buildCard(
                  '  📎When does it start?:',
                  'assets/images/WhatIs.png',
                  '👉 It usually appears in the first five years',
                '•It usually appears in the first five years of childhood and tend to continue into adulthood.'
              ),
              buildCard(
                  '  📎Causes of Autism',
                  'assets/images/WhatIs.png',
                  '👉 It\'s likely to be associated with many',
                  'It\'s likely to be associated with many factors that affect early brain development.\n'
                  '👉	Genetic:\n'
                  '   • Having one infected child increases the \t  likelihood of injury to his siblings\n'
                  '👉	Environmental:\n'
                  '   •	Premature birth (35 weeks before  \t  pregnancy)\n'
                  '   •	Exposure to certain medications during \t  pregnancy\n'

        ),
          buildCard(
            ' 📎Common signs of autism',
            'assets/images/WhatIs.png',
            '👉 Some of the more common signs ',
            '✒ Some of the more common signs that may indicate a person has autism include:\n'
            '👉 Avoiding eye contact.\n'
            '👉 Delayed speech and communication skills.\n'
            '👉 Reliance on rules and routines.\n'
            '👉 Being upset by relatively minor changes.\n'
            '👉 Unexpected reactions to sounds, tastes, sights, touch and smells.\n'
            '👉 Difficulty understanding other people’s emotions.\n'
            '👉 Focusing on or becoming obsessed by a narrow range of interests or objects.\n'
            '👉 Engaging in repetitive behavior such as flapping hands or rocking.\n'
            '👉 Children not responding to their name by 12 months.\n'
            '👉 Children not pointing at distant objects by 14 months.\n',
          ),
              buildCard(
                  '📎How to deal with patient with ASD:',
                  'assets/images/WhatIs.png',
                  '👉 Before dealing with patient',
                 '👉 Before dealing with patient, the parents should:\n'
                     '  1)	Have knowledge about Autism\n'
                     '  2)	Have expert on your child\n '
                     ' 3)	Accept child\n\n '
                '👉 Dealing with ASD:\n'
                     ' ➡1)	Be consistent : Children with autism have difficulty applying everything they have learned in one place. Achieving consistency with your child is the best way to learn, as you must be consistent in your interaction with your child and dealing with difficult behaviors.\n'
                     ' ➡2)	Prepare a schedule for the child: meals, school, sleep and treatment to organize their time and reduce the burden.\n'
                     ' ➡3)	Positive reinforcement: Reward your child for good behavior such as giving them toys, and don\'t get angry when they behave badly.\n'
                     ' ➡4)	Creating a safe place for the child: Allocating a place for the child to relax and feel safe, such as placing two flags in a place indicating that it is a place to play and relax. \n'
                     ' ➡5)	Learning non-verbal signs: Most of the people with autism use sign language when we want something (sleep, hunger, ..etc) so parents should learn sign language to understand the child.\n'
                     ' ➡6)	Make time to play and have fun.\n'
                ,)

            ],
          ),
          backgroundColor: Colors.blue.shade50,
        ),
    );

  }
  Widget buildCard(String title, String urlImage,String Tit,String para)=>ExpandableNotifier(
  child:Padding(

      padding:EdgeInsets.all(10),
      child: Card(
        color: Colors.blue.shade100,
        clipBehavior: Clip.antiAlias,
        child:Column(
          children:<Widget> [
            Image(image: AssetImage(urlImage,),width: 200,),
         ScrollOnExpand(
           child:   ExpandablePanel(
             theme: ExpandableThemeData(
               expandIcon: Icons.arrow_circle_down_rounded,
               collapseIcon: Icons.arrow_circle_up_rounded,
               tapBodyToCollapse: true,
               tapBodyToExpand: true,
             ),
            //+++++++++++++++++++++++++++++++++++++++++++++++++++
            header:Text(title,style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            //+++++++++++++++++++++++++++++++++++++++++++++++++++
            collapsed:Text(
              Tit,
            style: TextStyle(

              fontFamily: 'Tajawal',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            softWrap: true,
            maxLines: 1,
                overflow: TextOverflow.ellipsis,),
            //+++++++++++++++++++++++++++++++++++++++++++++++++
            expanded:Text(para,style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              fontWeight: FontWeight.bold,
               wordSpacing: 1,
               height: 1.5,),
              textAlign: TextAlign.justify,
              ),
            //++++++++++++++++++++++++++++++++++++++++++++++++++
            builder: (_,collapsed,expanded)=>Padding(
              padding: EdgeInsets.all(12).copyWith(top: 0),
            child: Expandable(
              collapsed: collapsed,
              expanded: expanded,
            ),),
           ),),],
        ),
      ),)
  );
}
