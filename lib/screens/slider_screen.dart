import 'package:flutter/material.dart';
import 'package:components_app/theme/theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double sliderValue = 100;
  bool sliderenabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider and Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              activeColor: AppTheme.primary,
              min: 50,
              max: 1000,
              value: sliderValue,
              onChanged: sliderenabled
                  ? (value) {
                      setState(() {
                        sliderValue = value;
                      });
                    }
                  : null,
            ),
            //Checks documentation

            // Checkbox(
            //   value: sliderenabled,
            //   onChanged: (value) {
            //     setState(() {
            //       sliderenabled = value ?? true;
            //     });
            //   },
            // ),
            // Switch(
            //   value: sliderenabled,
            //   activeColor: AppTheme.primary,
            //   onChanged: (value) {
            //     setState(() {
            //       sliderenabled = value;
            //     });
            //   },
            // ),
            CheckboxListTile(
              value: sliderenabled,
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              onChanged: (value) {
                setState(() {
                  sliderenabled = value ?? true;
                });
              },
            ),
            SwitchListTile.adaptive(
              value: sliderenabled,
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              onChanged: (value) {
                setState(() {
                  sliderenabled = value;
                });
              },
            ),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const AssetImage('lib/assets/images/spidey.png'),
                  width: double.infinity,
                  height: sliderValue,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 20)
          ],
        ));
  }
}
