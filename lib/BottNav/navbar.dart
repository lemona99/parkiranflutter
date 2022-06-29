// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_app_parkir/Pages/home.dart';
import 'package:flutter_app_parkir/Pages/Search.dart';
import "package:flutter_app_parkir/Pages/three.dart";
import 'package:flutter_app_parkir/Pages/account.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex = 0;
  final List<Widget> body = [mainHome(), Search(), Halaman3(), Account()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentindex,
          backgroundColor: Colors.blue,
          selectedItemColor: Color.fromARGB(255, 19, 19, 19),
          unselectedItemColor: Colors.white,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                size: 30,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                size: 30,
              ),
              label: 'Payment',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                size: 30,
              ),
              label: 'Account',
            )
          ]),
    );
  }

  void onTap(int index) {
    setState(() {
      currentindex = index;
    });
  }
}
