import 'package:flutter/material.dart';

class Text_feild extends StatelessWidget {
  final controler;
  final String hintText;
  final bool obsquretext;
  const Text_feild(
      {super.key,
      this.controler,
      required this.hintText,
      required this.obsquretext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controler,
        obscureText: obsquretext,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: Colors.white54,
          filled: true,
          hintText: hintText,
        ),
        style: const TextStyle(
          letterSpacing: 1.5,
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
