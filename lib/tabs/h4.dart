import 'package:flutter/material.dart';

class Home4 extends StatelessWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 15,
          child: Container(
            height: 80,
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
      children: [
        Icon(Icons.emoji_emotions),
        Container(
          width: 100,
          child: TextFormField(
            autofocus: true,

            decoration: InputDecoration(

              border: InputBorder.none,
              hintText: "Message"
            ),
          ),
        ),
        Icon(Icons.attach_file),
        Icon(Icons.camera),
        Icon(Icons.keyboard_voice),
      ],
    );
  }
}

