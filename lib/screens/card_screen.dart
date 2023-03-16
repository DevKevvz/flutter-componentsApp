import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Cards'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard1(),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
              imageAsset: 'lib/assets/images/9313419.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
              imageAsset: 'lib/assets/images/9313421.jpg',
              imageName: 'Vehicle side',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCard2(
              imageAsset: 'lib/assets/images/9313422.jpg',
              imageName: 'Vehicle back part',
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}
