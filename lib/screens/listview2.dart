import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final opttions = [
    'Dayern Gomez',
    'Kevin Feliz',
    'Jennifer Rivas',
    'Angel Read'
  ];
  ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Type 2'),
        ),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int index) => ListTile(
            leading: const CircleAvatar(
              child:
                  Image(image: AssetImage('lib/assets/images/user_icon.png')),
            ),
            title: Text(opttions[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // ignore: avoid_print
              print('Hello World im ${opttions[index]}');
            },
          ),
          itemCount: opttions.length,
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
