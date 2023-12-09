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
    return  PageView.builder(
      itemCount: travel.length,
      itemBuilder: (context, index) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(travel[index].travelImg),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(travel[index].travelName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    travel[index].travelAddress,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Positioned(
                right: 15,
                bottom: 25,
                child: Container(height: 50,width: 50, child: const Icon(Icons.arrow_right_alt_outlined, color: Colors.white,), decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.red
                ),)),
          ],
        );
      },
    );

  }
}
