import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            padding: EdgeInsets.all(10),
            child: Center(
              child: TextFormField(
                style: TextStyle(color: Colors.black, height: 0),
                //textDirection: TextDirection.ltr,

                //  textAlignVertical: TextAlignVertical.center,

                decoration: const InputDecoration(
                  //icon: Icon(Icons.people),
                  prefixIcon: Icon(Icons.people),

                  hintText: "Enter Username",
                  // hintStyle: TextStyle(height: 20,fontWeight: FontWeight.bold),
                  labelText: "Username",
                  floatingLabelAlignment: FloatingLabelAlignment.start,
                  // floatingLabelStyle: TextStyle(height: -0.2,fontSize: 20),
                  contentPadding: EdgeInsets.only(top: 10),

                  // floatingLabelAlignment: FloatingLabelAlignment.center,
                  //   alignLabelWithHint: true,
                  border: InputBorder.none,
                  //    isCollapsed: true,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadiusDirectional.circular(14)),
          ),
          SizedBox(
            height: 100,
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter Email",
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                icon: Icon(Icons.password),
                hintText: "Enter Password",
                labelText: "Password",
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadiusDirectional.circular(20)),
          ),
          SizedBox(
            height: 10,
          ),
          //sign up button
          Container(
            width: 200,
            height: 100,
            color: Colors.lightGreen,
            child: Center(child: Text("Sign up")),
          )
        ],
      ),
    );
  }
}
