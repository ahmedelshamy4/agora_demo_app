import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String textBtn;
  final VoidCallback onTap;

  const CustomElevatedButton(
      {Key? key, required this.textBtn, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(textBtn),
    );
  }
}
