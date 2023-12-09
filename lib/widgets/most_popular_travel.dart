import 'package:flutter/material.dart';

import '../model/travel.dart';

class Most_Popular_Travel extends StatefulWidget {
  const Most_Popular_Travel({super.key});

  @override
  State<Most_Popular_Travel> createState() => _Most_Popular_Travel_ListState();
}

class _Most_Popular_Travel_ListState extends State<Most_Popular_Travel> {
  var travelList = Travel.getMostTravelList();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var travel = travelList[index];
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(travel.travelImg,
                    width: 150.0, height: 300.0, fit: BoxFit.cover),
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            width: 10,
          );
        },
        itemCount: travelList.length);
  }
}
