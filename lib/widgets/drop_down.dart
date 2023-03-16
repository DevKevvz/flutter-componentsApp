import 'package:flutter/material.dart';

class DropDownCustom extends StatelessWidget {
  final Map<String, String> fromValues;
  final String formProperty;
  const DropDownCustom(
      {super.key, required this.fromValues, required this.formProperty});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      icon: const Icon(Icons.work),
      value: 'Admin',
      items: const [
        DropdownMenuItem(
          value: 'Admin',
          child: Text('Admin'),
        ),
        DropdownMenuItem(
          value: 'FrontEnd',
          child: Text('FrontEnd Developer'),
        ),
        DropdownMenuItem(
          value: 'BackEnd',
          child: Text('BackEnd Developer'),
        ),
        DropdownMenuItem(
          value: 'UIX',
          child: Text('UIX Designer'),
        ),
      ],
      onChanged: (String? value) {
        fromValues[formProperty] = value ?? 'Admin';
        print(value);
      },
    );
  }
}
