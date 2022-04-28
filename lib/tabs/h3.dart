import 'package:flutter/material.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {

  String name = "";

  @override
  Widget build(BuildContext context) {
    TextEditingController controller1 = TextEditingController(),controller2 = TextEditingController();
    return Column(
      children: [
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.all(20),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter num1",
              border: InputBorder.none,

            ),
            controller: controller1,
          ),
        ),
        SizedBox(height: 5,),
        Container(
          margin: EdgeInsets.all(20),
          child: TextFormField(
            decoration: const InputDecoration(
                hintText: "Enter num2",
              border: InputBorder.none,
            ),
            //controller: controller2,
            onChanged: (value){
              name = value;
              setState(() {

              });
            },
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(name),

        )
      ],
    );
  }


}
