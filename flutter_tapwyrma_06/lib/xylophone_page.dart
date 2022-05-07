import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XyloPhone extends StatefulWidget {
  XyloPhone({Key key}) : super(key: key);

  @override
  State<XyloPhone> createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff273238),
        title: Text('Flutter Xylophone'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          buildContainer(Color(0xffEF443A), '1'),
          buildContainer(Color(0xffF99700), '2'),
          buildContainer(Color(0xffFFE93B), '3'),
          buildContainer(Color(0xff4CB050), '4'),
          buildContainer(Color(0xff2E968C), '5'),
          buildContainer(Color(0xff2996F5), '6'),
          buildContainer(Color(0xff9B28B1), '7'),
        ],
      ),
    );
  }

  Expanded buildContainer(Color tus, String notaNumber) {
    return Expanded(
      child: Material(
        color: tus,
        child: InkWell(
          splashColor: Colors.grey,
          onTap: () {
            player.play('notes/nota$notaNumber.wav');
          },
        ),
      ),
    );
  }
}
