import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final opttions = [
    'Dayern Gomez',
    'Kevin Feliz',
    'Jennifer Rivas',
    'Angel Read'
  ];
  ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Type 1'),
        ),
        body: ListView(
          children: [
            ...opttions
                .map((e) => ListTile(
                      leading: const CircleAvatar(
                        child: Image(
                            image:
                                AssetImage('lib/assets/images/user_icon.png')),
                      ),
                      title: Text(e),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // ignore: avoid_print
                        print('Hello World im $e');
                      },
                    ))
                .toList()
          ],
        ));
  }
}
