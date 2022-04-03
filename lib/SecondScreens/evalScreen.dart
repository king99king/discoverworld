import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

class evalPage extends StatefulWidget {
  const evalPage({Key? key}) : super(key: key);

  @override
  State<evalPage> createState() => _evalPageState();
}

class _evalPageState extends State<evalPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.shade100,
            ),
           child:Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   IconButton(
                     icon:Icon( Icons.arrow_back,),
                     onPressed: ()=>Navigator.pop(context),
                   ),
                 ],
               ),
               Image(image: AssetImage(
                 'assets/images/rateApp.png'
               )),
               ElevatedButton(
                   onPressed: () async {
                     final url='https://www.youtube.com/watch?v=T0qbFgbFhg0';
                     if(await canLaunch(url)){
                       await launch(url);
                     }else if(await canLaunch(url)){
                       await launch(url,
                           forceSafariVC: false);
                     }

                   },

               child: Text('hoo'),

             ),
           ]),


          ),
        ),
    );
  }
}
