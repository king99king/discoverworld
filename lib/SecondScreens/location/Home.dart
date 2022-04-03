import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:discoverworld/SecondScreens/location/destination.dart';
import 'package:discoverworld/SecondScreens/location/Utils.dart';
import '';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Position _currentPosition;
  List<Destination> destinationlist = <Destination>[];

  @override
  void initState() {
    _getCurrentLocation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ASD Centers Locations"),
        ),
        body: Container(

          decoration: BoxDecoration(
             //image: DecorationImage(
             //  image: AssetImage('assets/images/locationBg.png'),
          //   ),
          ),
          child: destinationlist.length>0?
          ListView.builder(
              padding: EdgeInsets.all(30),
              shrinkWrap: true,
              itemCount: destinationlist.length,
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
                          color: Color(0xFFD4FFE0),
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
                                      Text("${destinationlist[index].name}",textAlign: TextAlign.justify,),
                                      Text("${destinationlist[index].distance.toStringAsFixed(2)} km"),
                                      FlatButton(
                                        color: Color(0xFF0B99E0),
                                        onPressed: () async {
                                          final url='${destinationlist[index].urlLocation}';
                                          if(await canLaunch(url)){
                                            await launch(url);
                                          }else if( await canLaunch(url)){
                                            await launch(url,
                                                forceSafariVC: false);
                                          }

                                        },
                                        child:Text('Location on map'
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8)
                                        ),                                     ),
                                    ],
                                  ),
                                ),
                                InkWell(onTap: (){
                                  launch("tel:${destinationlist[index].numberPhone}");
                                },
                                  child:Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xFF0B99E0),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text('Call'),
                                        SizedBox(height: 30,),
                                        Icon(Icons.phone_enabled_rounded,size: 50,
                                          color: Color(0xFFD4FFE0), )                                    ],
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
        desiredAccuracy: LocationAccuracy.best,
        forceAndroidLocationManager: true)
        .then((Position position) {
      distanceCalculation(position);
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  distanceCalculation(Position position) {
    for(var d in destinations){
      var km = getDistanceFromLatLonInKm(position.latitude,position.longitude, d.lat,d.lng);
      // var m = Geolocator.distanceBetween(position.latitude,position.longitude, d.lat,d.lng);
      // d.distance = m/1000;
      d.distance = km;
      destinationlist.add(d);
      // print(getDistanceFromLatLonInKm(position.latitude,position.longitude, d.lat,d.lng));
    }
    setState(() {
      destinationlist.sort((a, b) {
        return a.distance.compareTo(b.distance);
      });
    });
  }
}
