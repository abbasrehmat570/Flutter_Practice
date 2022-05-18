import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/main.dart';
import 'package:untitled/tabs/codelabs.dart';
import 'package:untitled/tabs/main_tab.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final userName = "Abbas Bhatti", userEmail = "AbbasBhatti570@gmail.com";

  final userImage = Image.network(
      "https://lh3.googleusercontent.com/a-/AOh14GiuA8ZKvbft7Sxigzc7ED_r8CB0SSS0SrhRlewF=s96-c-rg-br100");

  final textStyle = TextStyle(color: Colors.black);

  bool details = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.green,
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                userName,
                textScaleFactor: 1.3,
              ),
              accountEmail: Text(userEmail),
              decoration: BoxDecoration(
                color: Colors.amber[300],
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.all(5),
              arrowColor: Colors.blue,
              currentAccountPicture: userImage,
              currentAccountPictureSize: Size.square(80),
              otherAccountsPicturesSize: Size.square(60),
              otherAccountsPictures: [
                userImage,
              ],
              onDetailsPressed: () {
                setState(() {
                  details = !details;
                });
              },
            ),
            Expanded(
              child: details
                  ? Container(
                      height: 500,
                      width: 150,
                      child: listItem(),
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }

  Widget listItem() {
    return ListView(children: [
      ListTile(
          title: Text("Tab"),
          leading: Icon(Icons.tab),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TabMain(4),
              ),
            );
          }),
      ListTile(
          title: Theme.of(context).platform == TargetPlatform.android
              ? Text("Tab")
              : Text("Tab1"),
          leading: Icon(Icons.tab),
          onTap: () {

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TabMain(4),
              ),
            );
          }),
      ListTile(
          title: Text("Tab"),
          leading: Icon(Icons.tab),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TabMain(4),
              ),
            );
          }),
      ListTile(
          title: Text("Tab"),
          leading: Icon(Icons.tab),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TabMain(4),
              ),
            );
          }),
    ]);
  }
}
