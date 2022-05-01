import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  //
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
  var data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchJsonData();
  }

  fetchJsonData() async {
    // response holds all the text in a url in string format.
    var response = await http.get(url);
    //now we decode it into the json format
    data = jsonDecode(response.body);

    //because after every item  the screen has to changes
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // check the data is not null when its updated into the list tile items
    // it display a cirular indicator

    return data != null
        ? ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]["id"].toString()),
                subtitle: Text(data[index]["title"]),
                leading: Image.network(data[index]["thumbnailUrl"]),
              );
            },
            itemCount: data.length,
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }
}
