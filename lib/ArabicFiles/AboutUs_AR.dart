import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs_AR extends StatelessWidget {
  const AboutUs_AR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(
          appBar: AppBar(
            title: const Text('معلومات عن القائمين على البرنامج',
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
                  'عن التطبيق:\n \n'
                      'نحن طلاب السنة الرابعة من كلية عمان للعلوم الصحية وهذا هو مشروع تخرجنا.  هدفنا هو زيادة مستوى وعي المجتمع ومقدمي الرعاية حول العلامات المبكرة لاضطراب طيف التوحد من أجل التشخيص الفوري لاضطراب طيف التوحد بين الأطفال من سن 0-2 سنة من خلال تطوير تطبيق للهاتف المحمول.'
                  ,textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
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
                            child: Text('أعضاء الفريق:',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'Tajawal',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          //+++++++++++++++++++++++++++++++++++++++++++++++++++
                          collapsed:Container(
                            child: Text(
                              'الأسماء:                                                                      ',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(

                                fontFamily: 'Tajawal',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              softWrap: true,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,),
                          ),
                          //+++++++++++++++++++++++++++++++++++++++++++++++++
                          expanded:Text(
                          "👩‍⚕️1.عائشة خليفة راشد المعمرية                           \n"
                          "👩‍⚕2.فاطمة عبدالله عيسى المحيرزية\n"
                          "👨‍⚕3.فراس يحيى خلفان المقبالي\n"
                          "👩‍⚕4.هديل علي ابراهيم البلوشية\n"
                          "👩‍⚕5.منار ماجد سعيد الدرمكية\n"
                          "👩‍⚕6.مريم عبدالله الكمزارية\n"
                          "👨‍⚕7.محمد علي العمراني️\n"
                          "👩‍⚕8.رحاب أحمد ناصر العيسائية\n"
                          "👩‍⚕9.شعاع محمد المعمرية\n"
                          "👩‍⚕10.وفاء محمد المقبالية\n"
                          "👩‍⚕11.زكية علي حمدان الظهورية\n"
                            ,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontFamily: 'Tajawal',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1,
                              height: 1.5,),
                            textAlign: TextAlign.right,
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
                      Text('جميع الحقوق محفوظة',
                        textDirection: TextDirection.rtl,
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
