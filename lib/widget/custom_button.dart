// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  CustomButton({required this.text, this.onTap});
  String text;
  VoidCallback? onTap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(widget.text),
        ),
      ),
    );
  }
}
