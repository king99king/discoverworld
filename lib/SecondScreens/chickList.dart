import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class chickList20 extends StatelessWidget {
  const chickList20({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ASD Check List'),
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
            child: Text('👩‍⚕️ Please answer these questions about your child. Keep in mind how your child usually behaves. If you have seen your child do the behavior a few times, but he or she does not usually do it, then please don\'t check the box. Please check the box if your answer is yes or if your answer no leave it empty for every question. Thank you very much 👨‍⚕️',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Tajawal'

              ),
            textAlign: TextAlign.justify,),
          ),
        ),
        /*LabeledCheckbox(
          label: 'If you point at something across the room, does your child look at it?\n'
              '(FOR EXAMPLE, if you point at a toy or an animal, does your child look at the toy o animal?)',
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          value: _isSelected1,
          onChanged: (bool newValue) {
            setState(() {
              _isSelected1 = newValue;
              if (_isSelected1==true ){
                num1=1;
              }else if(_isSelected1==false){
                num1=0;
              }
            });
          },
        ),*/
//==============================================1=============================

        CheckboxListTile(
            title: Text('1. If you point at something across the room, does your child look at it?',
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
            subtitle: Text('(FOR EXAMPLE, if you point at a toy or an animal, does your child look at the toy o animal?)',
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
          title: Text('2. Have you ever wondered if your child might be deaf?',
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
          title: Text('3. Does your child play pretend or make-believe?',
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
          subtitle: Text('(FOR EXAMPLE, pretend to drink from an empty cup, pretend to talk on a phone, or pretend to feed a doll or stuffed animal?) ',
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
          title: Text('4. Does your child like climbing on things?',
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
          subtitle: Text('(FOR EXAMPLE, furniture, playground equipment, or stairs)',
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
          title: Text('5. Does your child make unusual finger movements near his or her eyes?',
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
          subtitle: Text('(FOR EXAMPLE, does your child wiggle his or her fingers close to his or her eyes?)',
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
          title: Text('6. Does your child point with one finger to ask for something or to get help? ',
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
          subtitle: Text('(FOR EXAMPLE, pointing to a snack or toy that is out of reach) ',
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
          title: Text('7. Does your child point with one finger to show you something interesting?',
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
          subtitle: Text('(FOR EXAMPLE, pointing to an airplane in the sky or a big truck in the road)',
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
          title: Text('8. Is your child interested in other children?',
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
          subtitle: Text('(FOR EXAMPLE, does your child watch other children, smile at them, or go to them?) ',
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
          title: Text('9. Does your child show you things by bringing them to you or holding them up for you to see – not to get help, but just to share? ',
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
          subtitle: Text('(FOR EXAMPLE, showing you a flower, a stuffed animal, or a toy truck)',
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
          title: Text('10. Does your child respond when you call his or her name? ',
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
          subtitle: Text('(FOR EXAMPLE, does he or she look up, talk or babble, or stop what he or she is doing when you call his or her name?) ',
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
          title: Text('11. When you smile at your child, does he or she smile back at you?',
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
          title: Text('12. Does your child get upset by everyday noises?',
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
          subtitle: Text('(FOR EXAMPLE, does your child scream or cry to noise such as a vacuum cleaner or loud music?) ',
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
          title: Text('13. Does your child walk?',
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
          title: Text('14. Does your child look you in the eye when you are talking to him or her, playing with him or her, or dressing him or her? ',
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
          title: Text('15. Does your child try to copy what you do? ',
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
          subtitle: Text('(FOR EXAMPLE, wave bye-bye, clap, or make a funny noise when you do)',
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
          title: Text('16. If you turn your head to look at something, does your child look around to see what you are looking at? ',
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
          title: Text('17. Does your child try to get you to watch him or her? ',
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
          subtitle: Text('FOR EXAMPLE, does your child look at you for praise, or say “look” or “watch me”?)',
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
          title: Text('18. Does your child understand when you tell him or her to do something?',
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
          subtitle: Text('(FOR EXAMPLE, if you don’t point, can your child understand “put the book on the chair” or “bring me the blanket”?)  ',
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
          title: Text('19. If something new happens, does your child look at your face to see how you feel about it? ',
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
          subtitle: Text('(FOR EXAMPLE, if he or she hears a strange or funny noise, or sees a new toy, will he or she look at your face?)',
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
          title: Text('20. Does your child like movement activities?',
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
          subtitle: Text('(FOR EXAMPLE, being swung or bounced on your knee) ',
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
            child: Text('Check ASD',
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
              Container(child: Text('LOW-RISK',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Tajawal'
                ),)),
              Container(
                child: Text('if child is younger than 24 months, screen again after second birthday. No further action required unless surveillance indicates risk for ASD.   ',
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      fontFamily: 'Tajawal'
                  ),
                  textAlign: TextAlign.justify,),
                padding: EdgeInsets.all(15),
              ),
              ElevatedButton(
                child: const Text('Back to Check List'),
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
              Container(child: Text('MEDIUM-RISK',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Tajawal'
                ),)),
              Container(
                child: Text('Administer the Follow-Up (second stage of M-CHAT-R/F) to get additional information about at-risk responses. If M-CHAT-R/F score remains at 2 or higher, the child has screened positive. Action required: refer child for diagnostic evaluation and eligibility evaluation for early intervention. If score on Follow-Up is 0-1, child has screened negative. No further action required unless surveillance indicates risk for ASD. Child should be rescreened at future well-child visits. ',
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      fontFamily: 'Tajawal'
                  ),
                  textAlign: TextAlign.justify,),
                padding: EdgeInsets.all(15),
              ),
              ElevatedButton(
                child: const Text('Back to Check List'),
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
              Container(child: Text('HIGH-RISK',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Tajawal'
                ),)),
              Container(
                child: Text(' It is acceptable to bypass the Follow-Up and refer immediately for diagnostic evaluation and eligibility evaluation for early intervention. ',
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      fontFamily: 'Tajawal'
                  ),
                  textAlign: TextAlign.justify,),
                padding: EdgeInsets.all(15),
              ),
              ElevatedButton(
                child: const Text('Back to Check List'),
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
              Container(child: Text('NO-RISK',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Tajawal'
                ),)),
              Container(
                child: Text('Your Child have no signs of ASD  ',
                  style: TextStyle(
                      height: 1.5,
                      fontSize: 18,
                      fontFamily: 'Tajawal'
                  ),
                  textAlign: TextAlign.justify,),
                padding: EdgeInsets.all(15),
              ),
              ElevatedButton(
                child: const Text('Back to Check List'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      );
    },
  );
}