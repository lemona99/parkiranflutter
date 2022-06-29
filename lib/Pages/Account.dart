// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, avoid_types_as_parameter_names
import 'package:flutter/material.dart';
import 'package:flutter_app_parkir/Login/signIn.dart';

// ignore: must_be_immutable
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);
  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List<String> title = [
    "Home",
    "Profile Detail",
    "About",
    "Help",
    "Login",
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> icon = [
      IconButton(
        icon: Icon(
          Icons.home,
          color: Color.fromARGB(255, 71, 104, 114),
          size: 30,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.account_circle,
          color: Color.fromARGB(255, 71, 104, 114),
          size: 30,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.info_outline,
          color: Color.fromARGB(255, 71, 104, 114),
          size: 30,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.help,
          color: Color.fromARGB(255, 71, 104, 114),
          size: 30,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.login,
          color: Color.fromARGB(255, 71, 104, 114),
          size: 30,
        ),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => SignIn()));
        },
      )
    ];

    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 100,
                  ),
                  Text(
                    'Nama Account',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Text(
                    'ikhsan*******@gmail.com',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              child: ListView.builder(
                itemBuilder: (BuildContext, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.blue)),
                    ),
                    width: double.infinity,
                    height: 61,
                    child: ListTile(
                      leading: Padding(
                        padding: EdgeInsets.all(2),
                        child: icon[index],
                      ),
                      title: Text(
                        title[index],
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: icon.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
              ),
            )
          ],
        ),
      ),
    );
  }
}
