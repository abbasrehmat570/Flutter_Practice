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

void main() {
//  WidgetsBinding binding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: binding);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        ),
        drawer: MyDrawer(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
