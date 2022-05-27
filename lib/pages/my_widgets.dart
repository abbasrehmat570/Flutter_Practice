import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'all_simple_widgets.dart';

class MyPractice extends StatefulWidget {
  const MyPractice({Key? key}) : super(key: key);

  @override
  State<MyPractice> createState() => _MyPracticeState();
}

class _MyPracticeState extends State<MyPractice> {
  @override
  Widget build(BuildContext context) {
    //var _key2 = GlobalKey() ;

/*
          {

          }*/

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child:
                          Container(color: Colors.grey, child: Text("Abbas")),
                    ),
                    Text("Abbas"),
                    Expanded(
                      flex: 0,
                      child:
                          Container(color: Colors.grey, child: Text("Abbas")),
                    ),
                    Text("Abbas"),
                    Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.spaceBetween,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 50,
                      children: [
                        Text("Abbas"),
                        Container(color: Colors.grey, child: Text("Abbas")),
                      ],
                    ),
                    Text("Abbas"),
                  ],
                ),
                color: Colors.green,
              ),
              SizedBox(
                height: 20,
              ),
              Opacity(
                opacity: 0.5,
                alwaysIncludeSemantics: true,
                child: Text("Abbas"),
              ),
              FutureBuilder(builder: (context, snapshot) {
                return Text("data");
              }),
              MyCard(),
              MyAnim(),
              SizedBox(height: 30,),
              MyFuture(),
            ],
          ),
        ),
      ),
    );
  }
}


