import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter Username",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                    color: Colors.green, width: 2, style: BorderStyle.solid),
              ),
            ),
          )
        ],
      ),
    );
  }
}
