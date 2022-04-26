import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class infoPage_AR extends StatelessWidget {
  const infoPage_AR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          title: const Text('حول اضطراب طيف التوحد',
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
                '📎المعنى:',
                'assets/images/WhatIs.png',
                '👈 مجموعة مـن الاضطرابات المعقدة                       ',
                'مجموعة مـن الاضطرابات المعقدة في وظائف الدماغ، وتتميز هذه الاضطرابات بضعف السـلوك الاجتماعي ومهارات التواصل و اللغة مع محدودية الاهتمامات والأنشطة.\n'
            ),
            buildCard(
                '	📎متى يبدأ؟:',
                'assets/images/WhatIs.png',
                '👈تظهر بعض علامات اضطراب طيف                   ',
                'تظهر بعض علامات اضطراب طيف التوحد عادة في السنوات الخمس الأولى مـن سـن الطفولة وتميل للاستمرار لسن البلوغ.'

            ),
            buildCard(
                '	📎عوامل الخطر:',
                'assets/images/WhatIs.png',
                '👈أسباب الإصابة بطيف التوحد                                 ',
                "👈أسباب الإصابة بطيف التوحد\n"
            "●	وراثية:\n"
            "▪	وجود طفل واحد مصاب يزيد من احتمالية إصابة أشقائه\n"
            "●	بيئية :\n"
            "▪	الولادة المبكرة (قبل ٣٥ ً أسبوعا من الحمل)\n"
            "▪	التعرض لبعض الأدوية خلال الحمل.\n"


      ),
            buildCard(
                '  📎	أعراض مرض التوحد (بناءً على العمر) :\n',
                'assets/images/WhatIs.png',
                '👈 في عمر 6 أشهر:  قلة                                           ',
               " ●	في عمر 6 أشهر:  قلة الابتسامات الواسعة أو عدم وجودها وغيرها من التعابير الدافئة والمبهجة و التفاعلية.\n"
           " ●	عند عمر 9 أشهر:  تفاعل قليل أو معدوم للأصوات أو الابتسامات أو تعابير الوجه الأخرى.\n"
            " ●	عند عمر 16 شهرا: عدم قول كلمات مفردة.\n"
           " ●	عند بلوغ 18 : عدم لعب لعبة التنكر أو تقمص الشخصيات.\n"
            ' ●	عند بلوغ 24 شهرا:عدم نطق جمل مكونة من كلمتين.\n'
               " ●	فقدان المهارات اللغوية والاجتماعية في أي عمر\n\n"

                "✋تتفاوت الأعراض بين طفل وآخر ولكنها تشمل:\n\n"
               "◄صعوبة في استخدام اللغة أو فهمه:\n "
                "●	تأخر تطور الكلام ومحدودية المفردات مقارنة بأقرانهم\n"
              " ●	تكرار مجموعة من الكلمات أو العبارات\n"
                " ●	تركيز الانتباه و الحوارات حول مجالات محدودة من الموضوعات\n"
            " ●	رتابة و سطحية الكلام.\n\n"
            "◄	صعوبة في التفاعل الاجتماعي، وتشمل:\n"
            " ●	صعوبة في تكوين الصداقات والتفاعل مع الناس\n"
           " ●	صعوبة في فهم تعابير الوجه و مشاعر الآخرين\n"
            " ●	صعوبة في التعبير عن مشاعرهم\n"
            " ●	ضعف أو انعدام التواصل البصري\n"
            ' ●	عدم الرغبة في الاحتضان\n'
            " ●	عدم الرد عند مناداة الطفل باسمه\n"
               " ●	عدم تنفيذ الأوامر.\n\n"
              " ◄	تكرر السلوكيات واتباع روتين صارم:\n"
               " ●	حركة الجسم مثل الرفرفة باليدين\n"
               " ●	تحريك الأشياء مثل تدوير عجلات سيارة لعبة\n"
               " ●	القيـــم ببعـض الممارســـات التـــي يمكن أن ســـبب إيذاء للنفس مثل العض أو ضرب الرأس\n"
           " ●	الالتزام بنفس الروتين كل يـــوم مع وجودة صعوبة كبيرة في التكيف حتى مع أبسط التغييرات.\n\n"
               "◄	الحساسية الحسية ، وتشمل الحساسية المفرطة أو قلة الإحساس لـ:\n"
                " ●	الأصوات\n"
                " ●	الأضواء\n"
                " ●	اللمس\n"
                " ●	المذاق\n"
                " ●	الروائح\n"
                 " ●	الألم وغيرها.\n\n"




            ),

            buildCard(
                '📎عوامل خطر الإصابة بالتوحد:\n',
                'assets/images/WhatIs.png',
                '👈التاريخ العائلي: وجود أخ أو أخت                              ',
                " ●	التاريخ العائلي: وجود أخ أو أخت مصابين بطيف التوحد\n"
                " ●	الأبوة في سن متأخرة\n"
                " ●	جنس الطفل: أظهرت الأبحاث إحتمالية إصابة الذكور أكبر من إصابة الإناث\n"
                " ●	اضطرابات أخرى: مثل الإصابة بالإصابة بمتلازمة داون والإصابة بمتلازمة الكروموسوم إكس\n"
                " ●	وزن منخفض أثناء الولادة\n"



            ),
            buildCard(
              '📎كيف يتم التعامل مع مرض التوحد:',
              'assets/images/WhatIs.png',
              '👈قبل التعامل مع المريض يجب على الوالدين:     \n',
              '👈قبل التعامل مع المريض يجب على الوالدين:\n'
              " ●	لديهم معرفة باضطراب طيف التوحد\n"
              " ●	لديهم  معرفة في التعامل مع الطفل\n"
              " ●	 تقبل الطفل\n\n"


              "👈التعامل مع أطفال طيف التوحد:\n"
                "⭐	1) كن متسقًا: يواجه الأطفال المصابون بالتوحد صعوبة في تطبيق كل ما تعلموه في مكان واحد.  إن تحقيق التناسق مع طفلك هو أفضل طريقة للتعلم ، حيث يجب أن تكون متسقًا في تفاعلك مع طفلك والتعامل مع السلوكيات الصعبة.  (سميث ، 2021).\n"
                "⭐	2) إعداد جدول للطفل: وجبات الطعام والمدرسة والنوم والعلاج تنظيم وقتهم وتخفيف العبء.  (سميث ، 2021).\n"
                "⭐	 3) التعزيز الإيجابي: كافئ طفلك على السلوك الجيد مثل إعطائه الألعاب ، ولا تغضب عندما يتصرف بشكل سيء.  (سميث ، 2021).\n"
                "⭐	4) إيجاد مكان آمن للطفل: تخصيص مكان للطفل للاسترخاء والشعور بالأمان ، مثل وضع علمين في مكان يشير إلى أنه مكان للعب والاسترخاء.  (سميث ، 2021).\n"
                "⭐	5) تعلم الإشارات غير اللفظية: يستخدم معظم المصابين بالتوحد لغة الإشارة عندما نريد شيئًا (النوم ، الجوع ، .. الخ) لذلك يجب على الآباء تعلم لغة الإشارة لفهم الطفل.  (سميث ، 2021).\n"
                "⭐	6) خصص وقتا للعب والمتعة (سميث، 2021).\n\n"

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
                  header:Text(title,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,),
                  //+++++++++++++++++++++++++++++++++++++++++++++++++++
                  collapsed:Text(
                    Tit,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(

                      fontFamily: 'Tajawal',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,

                    ),
                    softWrap: true,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,),
                  //+++++++++++++++++++++++++++++++++++++++++++++++++
                  expanded:Text(para,
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
