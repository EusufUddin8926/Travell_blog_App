import 'package:flutter/material.dart';

import '../model/travel.dart';

class Travel_info extends StatefulWidget {
  Travel_info({super.key});

  @override
  State<Travel_info> createState() => _Travel_infoState();
}

class _Travel_infoState extends State<Travel_info> {
  var travel = Travel.getTravelList();
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: travel.length,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(travel[index].travelImg,
                    width: MediaQuery.of(context).size.width * .98,
                    height: 480,
                    fit: BoxFit.cover),
              ),
              Positioned(
                  bottom: 20.0,
                  left: 20.0,
                  child: Column(
                    children: [
                      Text(
                        travel[index].travelName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        travel[index].travelDesc,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  )),
              Positioned(
                  bottom: -25,
                  right: 20,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ))
            ],
          );
        });
  }
}
