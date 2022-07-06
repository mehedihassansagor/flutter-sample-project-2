import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  double? width;
  double? height;
  VoidCallback? onPressed;
  final Widget child;
  MyContainer({
    Key? key,
    this.width = 80,
    this.height = 80,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              gradient: LinearGradient(
                stops: [0.3, 0.7],
                colors: [Colors.blue.shade200, Colors.blue],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 5,
                  color: Colors.grey,
                )
              ]),
          alignment: Alignment.center,
          width: width,
          height: height,
          child: child),
    );
  }
}
