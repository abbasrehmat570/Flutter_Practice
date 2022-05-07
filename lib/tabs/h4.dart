import 'package:flutter/material.dart';

class Home4 extends StatelessWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 15,
          left: 5,
          right: 5,
          child: Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue[100],
            child: MessageBody(),
          ),
        ),
      ],
    );
  }
}

class MessageBody extends StatelessWidget {
  const MessageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            color: Colors.blue[300],
            child: Row(
              children: [
                Icon(Icons.emoji_emotions),
                Container(
                  width: 200,
                  child: TextFormField(
                    //autofocus: false,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Message"),
                  ),
                ),
                Icon(Icons.attach_file),
                Icon(Icons.camera),
              ],
            ),
          ),
        ),
        MyContainer(),
        //MyIcon(icon: Icons.keyboard_voice),
      ],
    );
  }
}

class MyIcon extends StatelessWidget {
  const MyIcon({Key? key,  this.icon}) : super(key: key);
  final icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: 50,
      height: 50,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Icon(
        icon,
        size: 40,
      ),
    );
  }
}
class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      color: Colors.green,
    );
  }
}