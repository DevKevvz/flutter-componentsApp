import 'package:flutter/material.dart';

import '../theme/theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
            title: Text('Hi, im a card!'),
            subtitle: Text(
                'Cupidatat nulla proident sint tempor esse mollit aute labore esse nulla mollit amet. Velit amet labore proident aliqua duis nisi magna cupidatat do eu dolor velit. Anim ea proident occaecat incididunt cupidatat cillum quis. Esse reprehenderit aliquip excepteur ex non non dolor. Id voluptate sunt minim proident ea sit ut labore laborum aute fugiat laborum.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      print('Cancel hello');
                    },
                    child: const Text('Cancel')),
                TextButton(
                    onPressed: () {
                      print('Ok hello');
                    },
                    child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
