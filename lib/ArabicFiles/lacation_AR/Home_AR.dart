import 'package:discoverworld/ArabicFiles/lacation_AR/distination_AR.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:discoverworld/SecondScreens/location/destination.dart';
import 'package:discoverworld/SecondScreens/location/Utils.dart';

class Home_AR extends StatefulWidget {
  @override
  _Home_ARState createState() => _Home_ARState();
}

class _Home_ARState extends State<Home_AR> {
  late Position _currentPosition;
  List<Destination_AR> destinationlist = <Destination_AR>[];

  @override
  /* void initState() {
    _getCurrentLocation();
    super.initState();
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("مراكز لعلاج اضطراب طيف التوحد",
          style: TextStyle(
            fontFamily: 'Tajawal'
          ),),
        ),
        body: Container(

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/locationBg.png'),
            ),
          ),
          child: destinations.length>0?
          ListView.builder(
              padding: EdgeInsets.all(30),
              shrinkWrap: true,
              itemCount: destinations.length,
              itemBuilder: (context, index){
                return Container(
                  height: 150,
                  decoration: BoxDecoration(
                  ),
                  margin: EdgeInsets.all(5),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue.shade200,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(

                                  child: Column(
                                    children: <Widget>[
                                      Text("${destinations_AR[index].name}",
                                        textDirection: TextDirection.rtl,
                                        style:TextStyle(
                                          fontFamily: 'Tajawal',
                                        fontSize: 18,
                                      )
                                        ,textAlign: TextAlign.center,),
                                      //  Text("${destinations[index].distance.toStringAsFixed(2)} km"),
                                      SizedBox(height: 20,),

                                      FlatButton(
                                        color: Color(0xFF0B99E0),
                                        onPressed: () async {
                                          final url='${destinations_AR[index].urlLocation}';
                                          if(await canLaunch(url)){
                                            await launch(url);
                                          }else if( await canLaunch(url)){
                                            await launch(url,
                                                forceSafariVC: false);
                                          }
                                        },
                                        child:Text('الموقع على الخريطة',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                            fontFamily: 'Tajawal'
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8)
                                        ),                                     ),
                                    ],
                                  ),
                                ),
                                InkWell(onTap: (){
                                  launch("tel:${destinations_AR[index].numberPhone}");
                                },
                                  child:Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xFF0B99E0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        SizedBox(height: 10,),
                                        Text('اتصل',
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              fontFamily: 'Tajawal'
                                          ),),
                                        SizedBox(height: 30,),
                                        Icon(Icons.phone_enabled_rounded,size: 50,
                                          color: Colors.blue.shade50, )                                    ],
                                    ),
                                  ),),
                              ],
                            ),
                          ),
                          // Text("${destinationlist[index].name}"),
                          // Text("${destinationlist[index].distance.toStringAsFixed(2)} km"),
                        ],
                      ),
                    ),
                  ),
                );
              }
          ):
          Center(child: CircularProgressIndicator(),),

        )
    );
  }

  // get Current Location
  _getCurrentLocation() async{
    Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.reduced,
        forceAndroidLocationManager: true)
        .then((Position position) {
      distanceCalculation(position);
      /*setState(() {
        _currentPosition = position;
      });*/
    }).catchError((e) {
      print(e);
    });
  }

  distanceCalculation(Position position) {
    for(var d in destinations_AR){
      var km = getDistanceFromLatLonInKm(position.latitude,position.longitude, d.lat,d.lng);
      // var m = Geolocator.distanceBetween(position.latitude,position.longitude, d.lat,d.lng);
      // d.distance = m/1000;
      d.distance = km;
      destinationlist.add(d);
      // print(getDistanceFromLatLonInKm(position.latitude,position.longitude, d.lat,d.lng));
    }
    /* setState(() {
      destinations.sort((a, b) {
        return a.distance.compareTo(b.distance);
      });
    });*/
  }
}
