import 'package:flutter/material.dart';
import 'package:untitled/pages/my_widgets.dart';

import 'all_simple_widgets.dart';

class MyCustoms extends StatelessWidget {
  const MyCustoms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 150,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            background: MyCard(),
          ),
          floating: true,
          backgroundColor: Colors.amber,
          toolbarHeight: 60,
          leadingWidth: 40,
          centerTitle: true,
          title: Text("Sliver Screen"),
        ),
        SliverList(
            delegate: SliverChildListDelegate.fixed(
          [
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
          ],
        )),
        SliverFillRemaining(
          child: Material(
            child: Column(
              children: [
                MyCard(),
                MyAnim(),
                SizedBox(
                  height: 100,
                ),
                MyCard(),
                MyAnim(),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
