import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cutometextfeild extends StatelessWidget {
  const Cutometextfeild({
    super.key, required this.controller,
  });
final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
            border: InputBorder.none),
        style: TextStyle(
            fontSize: 50
        ),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}
