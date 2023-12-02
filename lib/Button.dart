import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function()? onTap;
  const Button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8.0)),
        padding: EdgeInsets.all(25.0),
        margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 20.0),
        child: Center(
            child: Text(
          'sign in',
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
