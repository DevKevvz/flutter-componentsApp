import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatelessWidget {
  const CircleAvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('DK'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: AssetImage('lib/assets/images/logo.png'),
        ),
      ),
    );
  }
}
