import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          appBar: AppBar(
            title: const Text('feedback & others'),
            leading: IconButton(
              icon:Icon( Icons.arrow_back,),
              onPressed: ()=>Navigator.pop(context),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: Colors.blue.shade100,
            ),
           child:ListView(
            scrollDirection: Axis.vertical,
             children: <Widget>[
               Container(
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   color: Colors.blue.shade100,
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                    Image(image: AssetImage(
                     'assets/images/rateApp.png'
                   ),
                    fit: BoxFit.scaleDown,
                    width: 220,
                    ),
               SizedBox(
                 width: double.infinity,
                 height: 50,
                 child: ElevatedButton(
                     onPressed: () async {
                       final url='https://docs.google.com/forms/d/1P2KHQkUOkURO06N_800RVCHBMKhYit__tepWh2lJjhE/viewform?edit_requested=true';
                       if(await canLaunch(url)){
                         await launch(url);
                       }else if(await canLaunch(url)){
                         await launch(url,
                             forceSafariVC: false);
                       }

                     },

                 child: Text('give a Feedback',
                     style: TextStyle(
                       fontFamily: 'Tajawal',
                       height:1.8,
                       fontSize: 30,
                     ),),
                      ),
               ),
                   ],
                 ),

               ),
               SizedBox(height: 10,),
               Container(
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                     color: Colors.blue.shade100,
                     borderRadius: BorderRadius.circular(10)
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[
                     Image(image: AssetImage(
                         'assets/images/pdfimg.png'
                     ),
                       fit: BoxFit.scaleDown,
                       width: 220,
                     ),
                     SizedBox(
                       width: double.infinity,
                       height: 50,
                       child: ElevatedButton(
                         onPressed: () async {
                           final url='https://drive.google.com/file/d/1QneEgfTzzRgCWwpTTu1XKNVYrybQE6Hw/view?usp=drivesdk';
                           if(await canLaunch(url)){
                             await launch(url);
                           }else if(await canLaunch(url)){
                             await launch(url,
                                 forceSafariVC: false);
                           }
                         },
                         child: Center(
                           child: Text('PDF file',
                           style: TextStyle(
                             fontFamily: 'Tajawal',
                             height:1.8,
                             fontSize: 30,
                           ),),
                         ),
                       ),
                     ),
                   ],
                 ),

               ),
               SizedBox(height: 20,),

          Container(
            child: Column(
              children: [
                Text('References',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal'

                ),),
            Image(image: AssetImage(
            'assets/images/pdfimg.png'
            ),
            width: 100,
            ),
               SizedBox(height: 10,),
               TextButton(
                   onPressed: () async {
                                final url='https://drive.google.com/file/d/1QneEgfTzzRgCWwpTTu1XKNVYrybQE6Hw/view?usp=drivesdk';
                                if(await canLaunch(url)){
                                await launch(url);
                                }else if(await canLaunch(url)){
                                await launch(url,
                                forceSafariVC: false);
                                }
                                },
                   child: Text(
                     'National Institute of Environmental Health Sciences.2021. Autism.',
                     style: TextStyle(
                       fontFamily: 'Tajawal',
                       fontSize: 18,
                     ),
                     textAlign: TextAlign.center,
                   ),
               ),
                SizedBox(height: 5,),
               //===========================
                TextButton(
                  onPressed: () async {
                    final url='https://www.moh.gov.sa/awarenessplateform/VariousTopics/Documents/Autism.pdf';
                    if(await canLaunch(url)){
                      await launch(url);
                    }else if(await canLaunch(url)){
                      await launch(url,
                          forceSafariVC: false);
                    }
                  },
                  child: Text(
                    'Ministry of Health portal team.(2021).Saudi Ministry of Health.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5,),
                //==========================
                TextButton(
                  onPressed: () async {
                    final url='https://www.helpguide.org/articles/autism-learning-disabilities/helping-your-child-with-autism-thrive.htm';
                    if(await canLaunch(url)){
                      await launch(url);
                    }else if(await canLaunch(url)){
                      await launch(url,
                          forceSafariVC: false);
                    }
                  },
                  child: Text(
                    'Smith, M., Segal, J., and Hutman, T. (2021). Helping your child with autism thrive.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5,),
                //==========================
                TextButton(
                  onPressed: () async {
                    final url='https://www.webmd.com/brain/autism/parenting-child-with-autism';
                    if(await canLaunch(url)){
                      await launch(url);
                    }else if(await canLaunch(url)){
                      await launch(url,
                          forceSafariVC: false);
                    }
                  },
                  child: Text(
                    'Flguhum,D.(2021).Parenting a Child on the Autism Spectrum.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5,),
                //==========================
                TextButton(
                  onPressed: () async {
                    final url='https://www.webmd.com/brain/autism/what-to-know-your-childs-autism-care-team';
                    if(await canLaunch(url)){
                      await launch(url);
                    }else if(await canLaunch(url)){
                      await launch(url,
                          forceSafariVC: false);
                    }
                  },
                  child: Text(
                    'Weishaupt,J.(2021).What to Know About Your Child\'s Autism Care Team.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5,),
                //==========================
                TextButton(
                  onPressed: () async {
                    final url='https://www.thefreelibrary.com/A%20reliable%20rubric%20for%20evaluating%20medical%20apps.-a0663656157';
                    if(await canLaunch(url)){
                      await launch(url);
                    }else if(await canLaunch(url)){
                      await launch(url,
                          forceSafariVC: false);
                    }
                  },
                  child: Text(
                    'A reliable rubric for evaluating medical apps. (2021, May 1). The Free Library.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5,),
                //==========================
                TextButton(
                  onPressed: () async {
                    final url='https://mchatscreen.com/wp-content/uploads/2016/08/M-CHAT-R_F_Omani.pdf';
                    if(await canLaunch(url)){
                      await launch(url);
                    }else if(await canLaunch(url)){
                      await launch(url,
                          forceSafariVC: false);
                    }
                  },
                  child: Text(
                    'Al-Mamari, W & et al. (2016).Modified Checklist for Autism in Toddlers, Revised with Follow-Up.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5,),
                //==========================
                TextButton(
                  onPressed: () async {
                    final url='https://www.health.govt.nz/system/files/documents/pages/guidance-evaluating-developing-health-app-oct17-v2.pdf.';
                    if(await canLaunch(url)){
                      await launch(url);
                    }else if(await canLaunch(url)){
                      await launch(url,
                          forceSafariVC: false);
                    }
                  },
                  child: Text(
                    'Health.govt.nz.',
                    style: TextStyle(
                      fontFamily: 'Tajawal',
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 5,),
              ],
            ),
          )
           ]),


          ),
        ),
    );
  }
}
