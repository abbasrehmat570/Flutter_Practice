import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class MyAnim extends StatefulWidget {
  const MyAnim({Key? key}) : super(key: key);

  @override
  State<MyAnim> createState() => _MyAnimState();
}

class _MyAnimState extends State<MyAnim> {
  var _color = Color.fromRGBO(144, 10, 250, 1);
  var _radius = BorderRadius.circular(20), _opacity = 0.4;
  var _width = 100.0, _height = 100.0;
  final _duration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          var min = 30, max = 240;
          final random = Random();

          _width = (min + random.nextInt(max - min)).toDouble();
          _height = (min + random.nextInt(max - min)).toDouble();

          _color = Color.fromRGBO(
              random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);

          _radius = BorderRadius.circular(random.nextInt(80).toDouble());

          //_opacity = _opacity <= 1 || _opacity > 1 ? _opacity-0.1 :_opacity+0.1 ;
        });
      },
      child: AnimatedOpacity(
        opacity: _opacity,
        duration: _duration,
        child: AnimatedContainer(
          duration: _duration,
          width: _width,
          height: _height,
          curve: Curves.bounceIn,
          decoration: BoxDecoration(
            borderRadius: _radius,
            color: _color,
          ),
          transform: Matrix4.rotationX(20),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

/*
  PageView(

  children: [MyCard()],
  )
  */
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 250,
        height: 20,
        color: Colors.grey,
        child: Text("Abbas Rehmat"),
      ),
    );
  }
}

class MyFuture extends StatefulWidget {
  const MyFuture({Key? key}) : super(key: key);

  @override
  State<MyFuture> createState() => _MyFutureState();
}

class _MyFutureState extends State<MyFuture> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text("${snapshot.hasError} occured");
          } else if (snapshot.hasData) {
            final data = snapshot.data as String;
            return Text(data);
          }
        }

        return CircularProgressIndicator();
      },
    );
  }
}

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Data";
  });
}
