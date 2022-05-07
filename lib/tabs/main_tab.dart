import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:untitled/pages/mydrawer.dart';
import 'package:untitled/pages/splash.dart';
import 'package:untitled/tabs/codelabs.dart';
import 'package:untitled/tabs/h1.dart';
import 'package:untitled/tabs/h2.dart';
import 'package:untitled/tabs/h3.dart';
import 'package:untitled/tabs/h4.dart';

class TabMain extends StatefulWidget {
  TabMain(this.tabselected) ;
  int tabselected;

  @override
  State<TabMain> createState() => _TabMainState();
}

class _TabMainState extends State<TabMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("My App"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Input Text",
                ),
                Tab(
                  icon: Icon(Icons.home_max_rounded),
                  text: "Home2",
                ),
                Tab(
                  icon: Icon(Icons.home_mini),
                  text: "Home3",
                ),
                Tab(
                  icon: Icon(Icons.home_work),
                  text: "Home4",
                ),
                Tab(
                  icon: Icon(Icons.code),
                  text: "Code labs",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Home1(),
              Home2(),
              Home3(),
              Home4(),
              CodeLabs(),
            ],
          ),
          drawer: MyDrawer(),
        ),
        length: 5,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}