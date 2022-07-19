// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, must_be_immutable, avoid_types_as_parameter_names, unnecessary_this
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  List<String> title = [
    "Motorcycle",
    "Car",
    "Truck",
  ];

  List<String> image = [
    'images/motor_scooter.png',
    'images/car_compact.png',
    'images/moving_truck.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Container(
            margin: EdgeInsets.all(15),
            color: Colors.blue,
            padding: EdgeInsets.all(5),
            width: 200,
            height: 200,
            child: Column(),
          );
        },
        itemCount: title.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
