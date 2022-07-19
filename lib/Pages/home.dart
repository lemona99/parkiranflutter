// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_app_parkir/style/font_style.dart';

class mainHome extends StatelessWidget {
  const mainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              color: Colors.blue,
              height: 800.0,
              padding: const EdgeInsets.fromLTRB(
                20.0,
                20.0,
                20.0,
                20.0,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListTile(
                          contentPadding: const EdgeInsets.only(top: 20.0),
                          leading: CircleAvatar(
                            radius: 30,
                            child: ClipOval(
                              child: Image.asset('images/people-face.jpg'),
                            ),
                          ),
                          title: const Text(
                            'Selamat siang',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          subtitle: const Text(
                            'Olivia Ara',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.notifications),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    'Cari parkiran yang sesuai keinginanmu',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.search),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 285.0,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                color: Color.fromARGB(255, 247, 247, 247),
              ),
              width: 392.0,
              height: 530,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Kategori',
                    style: textCategory,
                  ),
                  const SizedBox(height: 15.0),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: SizedBox(
                              width: 40.0,
                              child: Image.asset('images/motorbike.png'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: SizedBox(
                              width: 40.0,
                              child: Image.asset('images/sedan.png'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 2.0),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: SizedBox(
                              width: 40.0,
                              child: Image.asset('images/lorry.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  const Text(
                    'Parkir terdekat',
                    style: textCategory,
                  ),
                  const SizedBox(height: 15.0),
                  Expanded(
                    child: ListView(
                      children: [
                        Card(
                          semanticContainer: false,
                          child: ListTile(
                            leading: Image.asset('images/mall-dinoyo.jpg'),
                            title: const Text('Mall Dinoyo City'),
                            subtitle: const Text('Jl. MT. Haryono'),
                            trailing: const Text(
                              '2.0 KM',
                              style: textCategory,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
