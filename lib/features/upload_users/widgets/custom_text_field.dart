import 'package:flutter/material.dart';

import '../../../core/app_constants/app_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.icon,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: kNameStyle,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          gapPadding: 10,
        ),
        labelText: labelText,
        labelStyle: kNameStyle,
        prefixIcon: Icon(icon),
      ),
    );
  }
}
