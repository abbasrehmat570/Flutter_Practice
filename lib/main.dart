import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:untitled/pages/my_widgets.dart';
import 'package:untitled/pages/mycustoms.dart';
import 'package:untitled/pages/mydrawer.dart';
import 'package:untitled/pages/splash.dart';
import 'package:untitled/tabs/codelabs.dart';
import 'package:untitled/tabs/h1.dart';
import 'package:untitled/tabs/h2.dart';
import 'package:untitled/tabs/h3.dart';
import 'package:untitled/tabs/h4.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
    final _controller = PageController(
      initialPage: 1,
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "HomePage",
            textScaleFactor: 1.3,
          ),
          automaticallyImplyLeading: true,
          backgroundColor: Colors.green[800],
          centerTitle: true,
          elevation: 0,
          toolbarOpacity: 0.8,
          leadingWidth: 20,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          //titleSpacing: 20.0,

          actions: [
            Icon(Icons.search),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Column(children: [
          Container(
            width: 250,
            color: Colors.grey,
            padding: EdgeInsets.all(5),
            height: 210,
            child: PageView(
              pageSnapping: true,
              controller: _controller,
              children: [
                MyBody(),
                MyBody(),
                MyBody(),
              ],
            ),
          ),
        ]),
        drawer: MyDrawer(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey,
          child: Icon(Icons.home),
          onPressed: () {
            /// any functionality on click here
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Image(
            image: AssetImage("assets/images/img.png"),
          ),
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyPractice())),
        ),
        SizedBox(
          height: 10,
        ),
        MaterialButton(
            child: Icon(Icons.dashboard_customize),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyCustoms())))
      ],
    );
  }
}
