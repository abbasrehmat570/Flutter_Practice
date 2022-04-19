import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:untitled/pages/splash.dart';
import 'package:untitled/tabs/h1.dart';
import 'package:untitled/tabs/h2.dart';
import 'package:untitled/tabs/h3.dart';
import 'package:untitled/tabs/h4.dart';

void main() {
//  WidgetsBinding binding = WidgetsFlutterBinding.ensureInitialized();
 // FlutterNativeSplash.preserve(widgetsBinding: binding);
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  //  initial();
  }
/*
  void initial() async{
    await Future.delayed(Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }
*/
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
                  text: "Home",
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
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Home1(),
              Home2(),
              Home3(),
              Home4(),
            ],
          ),
        ),
        length: 4,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

