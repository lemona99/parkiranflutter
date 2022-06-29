// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Halaman3 extends StatelessWidget {
  const Halaman3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        // ignore: prefer_const_constructors
        child: Center(
          child: Text('Three'),
        ),
      ),
    );
  }
}
