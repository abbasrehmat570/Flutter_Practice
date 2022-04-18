import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Container(
            color: Colors.lightGreen,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.people),
                hintText: "Enter Username",
                labelText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                      color: Colors.black, width: 2, style: BorderStyle.solid),
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.lightGreen,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                hintText: "Enter Email",
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                      color: Colors.black, width: 2, style: BorderStyle.solid),
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20)),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.lightGreen,
            child: TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                icon: Icon(Icons.password),
                hintText: "Enter Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                      color: Colors.black, width: 2, style: BorderStyle.solid),
                ),
              ),
            ),
            decoration: BoxDecoration(
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
