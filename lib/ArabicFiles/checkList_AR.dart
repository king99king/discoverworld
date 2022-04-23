import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class chickList20_AR extends StatelessWidget {
  const chickList20_AR({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('قائمة التحقق من اضطراب طيف التوحد',
          style: TextStyle(
            fontFamily: 'Tajawal'
          ),),
          leading: IconButton(
            icon:Icon( Icons.arrow_back,),
            onPressed: ()=>Navigator.pop(context),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class LabeledCheckbox extends StatefulWidget {
  const LabeledCheckbox({
    Key? key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  State<LabeledCheckbox> createState() => _LabeledCheckboxState();
}

class _LabeledCheckboxState extends State<LabeledCheckbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Padding(
        padding: widget.padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(widget.label)),
            Checkbox(
              value: widget.value,
              onChanged: (bool? newValue) {
                widget.onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _isSelected1 = false;  bool _isSelected7 = false;  bool _isSelected13 = false; bool _isSelected19 = false;
  bool _isSelected2 = false;  bool _isSelected8 = false;  bool _isSelected14 = false; bool _isSelected20 = false;
  bool _isSelected3 = false;  bool _isSelected9 = false;  bool _isSelected15 = false;
  bool _isSelected4 = false;  bool _isSelected10 = false; bool _isSelected16 = false;
  bool _isSelected5 = false;  bool _isSelected11 = false; bool _isSelected17 = false;
  bool _isSelected6 = false;  bool _isSelected12 = false; bool _isSelected18 = false;

  var _colo=Colors.black;
  int num1=0;  int num7=0;     int num13=0;  int num19=0;
  int num2=0;  int num8=0;     int num14=0;  int num20=0;
  int num3=0;  int num9=0;     int num15=0;
  int num4=0;  int num10=0;    int num16=0;
  int num5=0;  int num11=0;    int num17=0;
  int num6=0;  int num12=0;    int num18=0;

  late int allNums =0;
  @override
  Widget build(BuildContext context) {
    allNums=num1+num2+num3+num4+num5+num6+num7+num8+num9+num10+num11+num12+num13+num14+num15+num16+num17+num18+num19+num20;
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),

      children:<Widget>[
        Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text('👩‍⚕️ الرجاء الإجابة على هذه الأسئلة عن طفلك. ضع في اعتبارك كيف يتصرف طفلك عادةً. إذا رأيت طفلك يقوم بهذا السلوك عدة مرات ، لكنه لا يفعل ذلك عادةً ، فالرجاء عدم تحديد المربع. يرجى تحديد المربع إذا كانت إجابتك بنعم لكن  إذا كانت إجابتك لا ، اتركها فارغة . شكراً جزيلاً👨‍⚕️',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                height: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Tajawal'

              ),
              textAlign: TextAlign.justify,),
          ),
        ),
//==============================================1=============================

        CheckboxListTile(
          title: Text('1. لو أشرت على حاجه فى الغرفة ،هل يشوف/ ينظر طفلك عليها؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('( مثلا :اذا أشرت له إلى لعبة أو حيوان ,هل يشوف طفلك على اللعبة أو   الحيوان؟)',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade300,
          value: _isSelected1,
          onChanged: (newValue) {
            setState(() {
              _isSelected1 = newValue!;
              if (_isSelected1==true ){
                num1=1;
              }else if(_isSelected1==false){
                num1=0;
              }
            });
          },
        ),
        SizedBox(height: 3,),
        //=====================================2
        CheckboxListTile(
          title: Text('2.هل حسيت/شككت في يوم أن  طفلك   (ما يسمع) أصم؟',
        textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          tileColor: Colors.blue.shade400,
          value: _isSelected2,
          onChanged: (newValue) {
            setState(() {
              _isSelected2 = newValue!;
              if (_isSelected2==true ){
                num2=1;
              }else if(_isSelected2==false){
                num2=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================3
        CheckboxListTile(
          title: Text('3.هل يلعب طفلك لعبا تخيليا ؟ ',
         textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('( مثلا، يشرب من كوب فاضي،  يتكلم فى التيلفون، أوبيأكل العروسة أو الدمية؟) ',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade300,
          value: _isSelected3,
          onChanged: (newValue) {
            setState(() {
              _isSelected3 = newValue!;
              if (_isSelected3==true ){
                num3=1;
              }else if(_isSelected3==false){
                num3=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================4
        CheckboxListTile(
          title: Text('4.هل يحب طفلك التسلق على الأشياء؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('( مثلا ، الأثاث أو السلالم؟)',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade400,
          value: _isSelected4,
          onChanged: (newValue) {
            setState(() {
              _isSelected4 = newValue!;
              if (_isSelected4==true ){
                num4=1;
              }else if(_isSelected4==false){
                num4=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================5
        CheckboxListTile(
          title: Text('5.هل  يسوي طفلك حركات غريبه  بأصابعه قدام عيونه؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('( مثلا ، هل يتأمل طفلك  أصابعه قرب عيونه؟)',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade300,
          value: _isSelected5,
          onChanged: (newValue) {
            setState(() {
              _isSelected5 = newValue!;
              if (_isSelected5==true ){
                num5=1;
              }else if(_isSelected5==false){
                num5=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================6
        CheckboxListTile(
          title: Text('6.هل يأشر طفلك بإصبع واحد ليطلب حاجه أو علشان تساعده ؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('( مثلا ،يأشر لطعام أو للعبة ما يقدر يوصلها ؟)',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade400,
          value: _isSelected6,
          onChanged: (newValue) {
            setState(() {
              _isSelected6 = newValue!;
              if (_isSelected6==true ){
                num6=1;
              }else if(_isSelected6==false){
                num6=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================7
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            CheckboxListTile(
              title: Text('7.هل يأشر طفلك بإصبع واحد عشان يراويك حاجه تعجبه؟',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 18,
                  color:Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
              contentPadding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
              ),
              subtitle: Text('( مثلا ، يأشر على طائرة في السماء أو شاحنة كبيرة في الشارع؟)',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              tileColor: Colors.blue.shade300,
              value: _isSelected7,
              onChanged: (newValue) {
                setState(() {
                  _isSelected7 = newValue!;
                  if (_isSelected7==true ){
                    num7=1;
                  }else if(_isSelected7==false){
                    num7=0;
                  }
                });
              },),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10) ,bottomRight:Radius.circular(10))
              ),
              child: Image(image: AssetImage(
                'assets/images/img7ch.png',
              ),
                fit: BoxFit.scaleDown,

              ),
            ),
          ],
        ),
        SizedBox(height: 3,),
        //=====================================8
        CheckboxListTile(
          title: Text('8.هل يهتم طفلك بالاطفال الآخرين؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('( مثلا ، هل يشوف طفلك على الاطفال الآخرين، يبتسم لهم، أو يروح لهم؟)',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade400,
          value: _isSelected8,
          onChanged: (newValue) {
            setState(() {
              _isSelected8 = newValue!;
              if (_isSelected8==true ){
                num8=1;
              }else if(_isSelected8==false){
                num8=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================9
        CheckboxListTile(
          title: Text('9.هل يراويك طفلك  الحاجات اللي يحبها أو يجيبها حالك علشان تشوفها,  ما علشان تساعده  ولكن لمجرد  المشاركة؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('( مثلا ، يراويك مجله أو دمية، أوشاحنة ؟)',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade300,
          value: _isSelected9,
          onChanged: (newValue) {
            setState(() {
              _isSelected9 = newValue!;
              if (_isSelected9==true ){
                num9=1;
              }else if(_isSelected9==false){
                num9=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================10
        CheckboxListTile(
          title: Text('10.هل يرد طفلك عندما تناديه بإسمه؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('( مثلا ، هل يشوف عليك، هل يتكلم أو يتوقف عن الشي اللي يسويه لما  تناديه بإسمه؟)',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade400,
          value: _isSelected10,
          onChanged: (newValue) {
            setState(() {
              _isSelected10 = newValue!;
              if (_isSelected10==true ){
                num10=1;
              }else if(_isSelected10==false){
                num10=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================11
        CheckboxListTile(
          title: Text('11.عندما تبتسم لطفلك، هل يردلك الإبتسامة ؟',
          textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          tileColor: Colors.blue.shade300,
          value: _isSelected11,
          onChanged: (newValue) {
            setState(() {
              _isSelected11 = newValue!;
              if (_isSelected11==true ){
                num11=1;
              }else if(_isSelected11==false){
                num11=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================12
        CheckboxListTile(
          title: Text('12.هل ينزعج طفلك من الضوضاء اليومية؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('( مثلا ، هل يصرخ طفلك أويصيح لوجود ازعاج مثل صوت المكنسة أوالخلاط؟)',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade400,
          value: _isSelected12,
          onChanged: (newValue) {
            setState(() {
              _isSelected12 = newValue!;
              if (_isSelected12==true ){
                num12=1;
              }else if(_isSelected12==false){
                num12=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================13
        CheckboxListTile(
          title: Text('13.هل يمشي طفلك؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          tileColor: Colors.blue.shade300,
          value: _isSelected13,
          onChanged: (newValue) {
            setState(() {
              _isSelected13 = newValue!;
              if (_isSelected13==true ){
                num13=1;
              }else if(_isSelected13==false){
                num13=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================14
        CheckboxListTile(
          title: Text('14.هل يشوف / ينظر طفلك عليك يوم تكلمه أو  تلعب معه، أو تغيير ملابسه؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          tileColor: Colors.blue.shade400,
          value: _isSelected14,
          onChanged: (newValue) {
            setState(() {
              _isSelected14 = newValue!;
              if (_isSelected14==true ){
                num14=1;
              }else if(_isSelected14==false){
                num14=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================15
        CheckboxListTile(
          title: Text('15.هل يحاول طفلك أن يقلد اللي تسويه؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('(   مثلا ، يلوح باي باي أو مع السلامة، يصفق،  أو يصلي  مثلك؟)',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade300,
          value: _isSelected15,
          onChanged: (newValue) {
            setState(() {
              _isSelected15 = newValue!;
              if (_isSelected15==true ){
                num15=1;
              }else if(_isSelected15==false){
                num15=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================16
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              CheckboxListTile(
                title: Text("16. إذا لفيت رأسك علشان تشوف شي، هل يلتفت طفلك عليه  ,ويشوف الشي اللي شفته انت ؟",
                 textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 18,
                    color:Colors.white,
                  ),
                  textAlign: TextAlign.justify,
                ),
                contentPadding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(10) ,topRight:Radius.circular(10))
                ),
                tileColor: Colors.blue.shade400,
                value: _isSelected16,
                onChanged: (newValue) {
                  setState(() {
                    _isSelected16 = newValue!;
                    if (_isSelected16==true ){
                      num16=1;
                    }else if(_isSelected16==false){
                      num16=0;
                    }
                  });
                },),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10) ,bottomRight:Radius.circular(10))
                ),
                child: Image(image: AssetImage(
                  'assets/images/img16ch.png',
                ),
                  fit: BoxFit.scaleDown,

                ),
              ),

            ]
        ),
        SizedBox(height: 3,),
        //=====================================17
        CheckboxListTile(
          title: Text("17. هل يحاول طفلك أن يلفت انتباهك؟",
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text("( مثلا ، هل يشوف عليك لتمدحه،  أو يقول\" شوف أو\" شوفني\"؟) ",
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade300,
          value: _isSelected17,
          onChanged: (newValue) {
            setState(() {
              _isSelected17 = newValue!;
              if (_isSelected17==true ){
                num17=1;
              }else if(_isSelected17==false){
                num17=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================18
        CheckboxListTile(
          title: Text('18. هل يفهم طفلك عليك يوم تقول له يسوي شئ ؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('( بدون ما تأشر مثلا, هل يقدر طفلك أن يفهم" حط الكتاب على الكرسي "أو" جيب لى شرشف/ بطانية "؟)',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade400,
          value: _isSelected18,
          onChanged: (newValue) {
            setState(() {
              _isSelected18 = newValue!;
              if (_isSelected18==true ){
                num18=1;
              }else if(_isSelected18==false){
                num18=0;
              }
            });
          },),
        SizedBox(height: 3,),
        //=====================================19
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:[
              CheckboxListTile(
                title: Text('19. إذا صار شئ جديد، هل يشوف طفلك عليك علشان يشوف ردة  فعلك  ؟',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 18,
                    color:Colors.white,
                  ),
                  textAlign: TextAlign.justify,
                ),
                contentPadding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(10) ,topRight:Radius.circular(10))
                ),
                subtitle: Text('(مثلا ، إذا سمع صوت غريب أومضحك، أو شاف لعبة جديدة ,هل يشوف عليك ؟)',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
                tileColor: Colors.blue.shade300,
                value: _isSelected19,
                onChanged: (newValue) {
                  setState(() {
                    _isSelected19 = newValue!;
                    if (_isSelected19==true ){
                      num19=1;
                    }else if(_isSelected19==false){
                      num19=0;
                    }
                  });
                },),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10) ,bottomRight:Radius.circular(10))
                ),
                child: Image(image: AssetImage(
                  'assets/images/img19ch.png',
                ),
                  fit: BoxFit.scaleDown,

                ),
              ),

            ]),
        SizedBox(height: 3,),
        //=====================================20
        CheckboxListTile(
          title: Text('20. هل يحب طفلك الأنشطة الحركية؟',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 18,
              color:Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          contentPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          subtitle: Text('( مثلا ، أن تأرجحه أوالهز على ركبتك؟)',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.justify,
          ),
          tileColor: Colors.blue.shade400,
          value: _isSelected20,
          onChanged: (newValue) {
            setState(() {
              _isSelected20 = newValue!;
              if (_isSelected20==true ){
                num20=1;
              }else if(_isSelected20==false){
                num20=0;
              }
            });
          },),
        SizedBox(height: 10,),
        FlatButton(
            height: 70,
            color: Colors.blue.shade600,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            onPressed: (){
              setState(() {
                if (allNums>=3 && allNums<=7){
                  MidRick(context);
                }
                else if(allNums>=8 && allNums<=20){
                  HighRick(context);
                }
                else if (allNums>0 && allNums<=2){
                  LowRick(context);
                }else{
                  NoRick(context);
                }
              });
            },
            child: Text('تحقق',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),)),

      ],);
  }
}
//algorethim of check list
void LowRick(context){
  showModalBottomSheet<void>(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(30),
            topRight: Radius.circular(30),),
          color: Colors.blue.shade100,
        ),
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,

            children: <Widget>[
              Container(child: Text('الاحتمال البسيط للإصابة',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Tajawal'
                ),)),
              Container(
                child: Text('في حال كان الطفل أقل من 24 شهرا، قم باعادة الفحص مرة أخرى في عيد ميلاده الثانى. و لا يتطلب الامر القيام باجراء اخر , إلا في حال  اظهرت متابعة حالة الطفل احتمال الاصابة بطيف اضطراب التوحد.',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      fontFamily: 'Tajawal'
                  ),
                  textAlign: TextAlign.justify,),
                padding: EdgeInsets.all(15),
              ),
              ElevatedButton(
                child: const Text('الرجوع الى القائمة'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      );
    },
  );
}

void MidRick(context){
  showModalBottomSheet<void>(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(30),
            topRight: Radius.circular(30),),
          color: Colors.blue.shade100,
        ),
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,

            children: <Widget>[
              Container(child: Text('الاحتمال المتوسط للإصابة',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Tajawal'
                ),)),
              Container(
                child: Text(" قم  بتطبيق المتابعة التكميلية ,  وهى المرحلة الثانية من ( (M-CHAT-R/F للحصول على معلومات اضافية عن ردود االافعال أو الاجابات التى تنذر بالإصابة. و في حال استمرار درجة M-CHAT-R/F  عند  درجة اثنين  أو أكثر ، فيعني  ذلك أن نتيجة فحص الطفل ايجابية. و يكون الاجراء المطلوب هو تحويل الطفل للتقييم التشخيصي  للوقوف على مدى احتياجه للتدخل المبكر. أما في حال كانت درجة المتابعة التكميلية من صفر حتى واحد ، فإن نتيجة فحص الطفل  في هذه الحالة تكون سلبية , و لا يتطلب الامر القيام بإجراء اخر الا اذا أظهرت متابعة حالة الطفل احتمال الاصابة بطيف اضطراب التوحد. ويجب  القيام بإعادة الفحص فى الزيارات الروتينية المستقبلية للطفل السليم.",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      fontFamily: 'Tajawal'
                  ),
                  textAlign: TextAlign.center,),
                padding: EdgeInsets.all(15),
              ),
              ElevatedButton(
                child: const Text('الرجوع الى القائمة'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      );
    },
  );

}

void HighRick(context){
  showModalBottomSheet<void>(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(30),
            topRight: Radius.circular(30),),
          color: Colors.blue.shade100,
        ),
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,

            children: <Widget>[
              Container(child: Text('الاحتمال المرتفع للإصابة',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Tajawal'
                ),)),
              Container(
                child: Text(' يصبح من المقبول ان يتم تجاوز اجراء المتابعة التكميلية و الاحالة بشكل  فوري للتقييم التشخيصي للوقوف على مدى  الحاجة للتدخل المبكر.',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      fontFamily: 'Tajawal'
                  ),
                  textAlign: TextAlign.justify,),
                padding: EdgeInsets.all(15),
              ),
              ElevatedButton(
                child: const Text('الرجوع الى القائمة'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      );
    },
  );
}

void NoRick(context){
  showModalBottomSheet<void>(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(30),
            topRight: Radius.circular(30),),
          color: Colors.blue.shade100,
        ),
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,

            children: <Widget>[
              Container(child: Text('لا توجد اعراض',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Tajawal'
                ),)),
              Container(
                child: Text('لا يوجد لدى طفلك اعراض لطيف التوحد',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      fontFamily: 'Tajawal'
                  ),
                  textAlign: TextAlign.justify,),
                padding: EdgeInsets.all(15),
              ),
              ElevatedButton(
                child: const Text('الرجوع الى القائمة'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      );
    },
  );
}