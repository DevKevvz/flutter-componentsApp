import 'package:flutter/material.dart';
import 'package:components_app/theme/theme.dart';

class CustomCard2 extends StatelessWidget {
  final String imageAsset;
  final String? imageName;
  const CustomCard2({super.key, required this.imageAsset, this.imageName});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: AssetImage(imageAsset),
            placeholder: const AssetImage('lib/assets/images/loader.gif'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (imageName != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(
                  imageName!,
                  style: const TextStyle(fontSize: 18, color: AppTheme.primary),
                ))
        ],
      ),
    );
  }
}
