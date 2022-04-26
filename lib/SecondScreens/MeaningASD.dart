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
            title: const Text('ASD',
            style: TextStyle(
                fontFamily: 'Tajawal'
            ),),
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
                    '•A complex combination of mental disorders marked by impaired social conduct, communication,and language abilities, as well as restricted pastimes and activities.(MOH-KSA, 2021).'
                ),
              buildCard(
                  '  📎When does it start?:',
                  'assets/images/WhatIs.png',
                  '👉 It usually appears in the first five years',
                '•It usually develops during the first five years of life and lasts until adulthood.\n \n'
                  '✋Predisposing factors : (NIEHS, 2021)\n'
                  '  1. a sibling with autism\n'
                  '  2. Parents in old age.\n'
                  '  3. Gender of the child: boys develop ASD more than girls.\n'
                  '  4. Other genetic disorders, such as Down, fragile X , and Rett syndromes\n'
                  '  5. Low birth weigh\n'
              ),
              buildCard(
                  '  📎Causes of Autism',
                  'assets/images/WhatIs.png',
                  '👉 It\'s  likely linked to a variety',
                  'It\'s  likely linked to a variety of elements that influence early brain development.\n'
                  '👉	Genetic:\n'
                  '   • Having one disorder child raises the chances of his siblings being injured.\n'
                  '👉	Environmental:\n'
                  '   •	Birth before the due date (35 weeks before pregnancy).\n'
                  '   •	Pregnancy and the use of certain drugs.\n'

        ),
              buildCard(
                  '  📎Symptoms according to age:',
                  'assets/images/WhatIs.png',
                  ' 👉 At 6 months: there are few or no smiles',
                  ' ● At 6 months: there are few or no smiles or other pleasant or interacting emotions.\n'
                  ' ● At 9 months: sounds, smiles, and other facial expressions elicit little or no reaction.\n'
                  ' ● At 16 months: Not able to say a single word.\n'
                  ' ● At the age of 18 months: Do not play dress-up and inability to imitate a person.\n'
                  ' ● At 24 months: inability to say a statement that contains at least two words.\n \n'
                   '- Any age can lead to a loss of language or social abilities.\n'

              ),

             buildCard(
            ' 📎Signs and symptoms of ASD are \t   differents from one child to another,\t   and include:\n',
            'assets/images/WhatIs.png',
            '👉 Having difficulties to understand',
            '👉 Having difficulties to understand and use language:\n'
            ' ● In comparison to their peers, they have impaired speech development and a lack of vocabulary.\n'
            ' ● Repeating words or sentences several times.\n'
            ' ● Concentrate discussion and attention on a small number of subjects.\n'
            ' ● Monotony and a lack of depth in speaking.\n\n'
            '👉 Difficulty in social relationship:\n'
             ' ● Making friends and communicating with others is difficult.\n'
             ' ● Understanding people’ facial expressions and feelings of others is difficult.\n'
             ' ● Difficulty showing their emotions.\n'
             ' ● visual communication is either little or non-existent.\n'
             ' ● Reluctance to hug\n'
             ' ● Not responding when someone is calling them by their names.\n'
             ' ● Does Not carry out orders.\n\n'
             '👉 Follow a rigid routine Repeat behaviors:\n'
             ' ● Doing some body movement like fluttering with hands.\n'
             ' ● Rotating things constantly such as the wheels of a toy car.\n'
             ' ● Biting or pounding their heads which lead to self-harm.\n'
             ' ● Commit to the same daily routine, finding it difficult to adapt to even little changes.\n\n'
            '👉 Sensitivity of senses, include excessive or lack of sensation to:\n'
             ' ● voices.\n'
             ' ● Lights.\n'
             ' ● Touch.\n'
             ' ● Taste.\n'
             ' ● Smells.\n'
             ' ● Pain and others.\n'



             ),
              buildCard(
                  '📎How to deal with patient with ASD or early interventions:\n',
                  'assets/images/WhatIs.png',
                  '👉 Role FOR PARENTS:',
                  '👉 Role FOR PARENTS:\n'
                  '✋🏻 Be consistent , Positive reinforcement for the child.\n\n'
                  '👉 ROLE OF THE HEALTH CARE PROFESSIONAL:\n'
                  '✋🏻 Providing behavioral services to the child to develop language and social skills and help the child to overcome behavioral challengesWith the provision of care to adapt to the environment around them\n \n '

                      '👉 Dealing with ASD children:\n'
                     ' ➡1)	Be consistent : Children with autism have difficulty applying everything they have learned in one place. Achieving consistency with your child is the best way to learn, as you must be consistent in your interaction with your child and dealing with difficult behaviors. \n'
                     ' ➡2)	Prepare a schedule for the child: meals, school, sleep and treatment to organize their time and reduce the burden. \n'
                     ' ➡3)	Positive reinforcement: Reward your child for good behavior such as giving them toys, and don\'t get angry when they behave badly.\n'
                     ' ➡4)	Creating a safe place for the child: Allocating a place for the child to relax and feel safe, such as placing two flags in a place indicating that it is a place to play and relax. \n'
                     ' ➡5)	Learning non-verbal signs: Most of the people with autism use sign language when we want something (sleep, hunger, ..etc) so parents should learn sign language to understand the child. \n'
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
