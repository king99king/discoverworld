import 'package:flutter/material.dart';

class Destination_AR{
  double lat;
  double lng;
  String name;
  double distance;
  int numberPhone;
  String urlLocation;

  Destination_AR(this.lat, this.lng, this.name,this.numberPhone,this.urlLocation,{required this.distance});
}
var destinations_AR = [
  Destination_AR(24.4236455,56.6768558, "مركز صحار للتوحد /\n ولاية صحار ",94102555,'https://www.google.com/maps/place/%D9%85%D8%B1%D9%83%D8%B2+%D8%B5%D9%8F%D8%AD%D8%A7%D8%B1+%D9%84%D9%84%D8%AA%D9%88%D8%AD%D9%8F%D8%AF%E2%80%AD/@24.4236455,56.6768558,21z/data=!4m5!3m4!1s0x3e8b4f5c15f23bed:0x355c804c263dc5b9!8m2!3d24.4236606!4d56.6767195', distance: 0),
  Destination_AR(23.5897249,58.3598839, "الجمعية العمانية للتوحد/\n العذيبة ",24128949,'https://www.google.com/maps/place/%D8%A7%D9%84%D8%AC%D9%85%D8%B9%D9%8A%D8%A9+%D8%A7%D9%84%D8%B9%D9%85%D8%A7%D9%86%D9%8A%D8%A9+%D9%84%D9%84%D8%AA%D9%88%D8%AD%D8%AF%E2%80%AD/@23.5897249,58.3598839,21z/data=!4m5!3m4!1s0x3e8e001763f96e21:0xfb1993201ccd5260!8m2!3d23.5897267!4d58.359816',distance: 0),
  Destination_AR(23.6063065,58.4738879, "المركز العربي للتوحد/\n مسقط ",92269227,'https://www.google.com/maps/place/%D8%A7%D9%84%D9%85%D8%B1%D9%83%D8%B2+%D8%A7%D9%84%D8%B9%D8%B1%D8%A8%D9%8A+%D9%84%D9%84%D8%AA%D9%88%D8%AD%D8%AF%E2%80%AD/@23.6063065,58.4738879,21z/data=!4m5!3m4!1s0x3e91f9697b3445ef:0xab4105c68c32fe11!8m2!3d23.6063148!4d58.4738538',distance: 0),
  Destination_AR(23.651363,58.1946951, "مركز الأفق للتوحد/\n ولاية السيب ",97457884,'https://www.google.com/maps/search/%D9%85%D8%B1%D9%83%D8%B2+%D8%A7%D9%84%D8%A3%D9%81%D9%82+%D9%84%D9%84%D8%AA%D9%88%D8%AD%D8%AF%2F+%D9%88%D9%84%D8%A7%D9%8A%D8%A9+%D8%A7%D9%84%D8%B3%D9%8A%D8%A8+%E2%80%AD/@23.6517254,58.1947095,19.99z',distance: 0),
  Destination_AR(23.5957741,58.3879712, "مركز مسقط للتوحد/\n العذيبة ",99451455,'https://www.google.com/maps/search/%D9%85%D8%B1%D9%83%D8%B2+%D9%85%D8%B3%D9%82%D8%B7+%D9%84%D9%84%D8%AA%D9%88%D8%AD%D8%AF%2F+%D8%A7%D9%84%D8%B9%D8%B0%D9%8A%D8%A8%D8%A9+%E2%80%AD/@23.5957741,58.3879712,21z',distance: 0),
  Destination_AR(23.6757085,57.8816111, "مركز التوحد المتكامل/\n ولاية بركاء ",97078901,'https://www.google.com/maps/place/%D9%85%D8%B1%D9%83%D8%B2+%D8%A8%D8%B1%D9%83%D8%A7%D8%A1+%D9%84%D9%84%D8%AA%D8%A3%D9%87%D9%8A%D9%84%E2%80%AD/@23.6757085,57.8816111,21z/data=!4m9!1m2!2m1!1z2YXYsdmD2LIg2KfZhNiq2YjYrdivINin2YTZhdiq2YPYp9mF2YQvINmI2YTYp9mK2Kkg2KjYsdmD2KfYoSA!3m5!1s0x3e8dc4d02d595f21:0x49f5b039d3d9dc73!8m2!3d23.6757522!4d57.8814855!15sCj3Zhdix2YPYsiDYp9mE2KrZiNit2K8g2KfZhNmF2KrZg9in2YXZhC8g2YjZhNin2YrYqSDYqNix2YPYp9ihWj4iPNmF2LHZg9iyINin2YTYqtmI2K3YryDYp9mE2YXYqtmD2KfZhdmEINmI2YTYp9mK2Kkg2KjYsdmD2KfYoZIBBnNjaG9vbJoBI0NoWkRTVWhOTUc5blMwVkpRMEZuU1VOSGRuRlFOR0pSRUFF',distance: 0),
  Destination_AR(23.619463,58.2015798, "مركز رواء للتأهيل /\n ولاية السيب ",99443306,'https://www.google.com/maps/place/%D9%85%D8%B1%D9%83%D8%B2+%D8%B1%D9%88%D8%A7%D8%A1+%D9%84%D9%84%D8%AA%D8%A3%D9%87%D9%8A%D9%84%E2%80%AD/@23.619463,58.2015798,21z/data=!4m5!3m4!1s0x3e8dfdb85aee3595:0xab4deb766f7aa685!8m2!3d23.6194081!4d58.2014757',distance: 0),
  Destination_AR(23.5324665,57.4682909, "مركز درة الشرق للتأهيل/\n ولاية الرستاق ",98814448,'https://www.google.com/maps/place/%D9%85%D8%B1%D9%83%D8%B2+%D8%AF%D8%B1%D8%A9+%D8%A7%D9%84%D8%B4%D8%B1%D9%82+%D9%84%D9%84%D8%AA%D9%88%D8%AD%D8%AF+%D8%A7%D9%84%D8%AA%D8%AE%D8%B5%D8%B5%D9%8A%E2%80%AD/@23.5324665,57.4682909,21z/data=!4m5!3m4!1s0x3e8c2f817e5d6f37:0x9f393f6129df393c!8m2!3d23.5324328!4d57.4682434',distance: 0),

];