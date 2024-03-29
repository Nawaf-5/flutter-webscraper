import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double height;
  final double rTopLeft;
  final double rTopRight;
  final double rBottomLeft;
  final double rBottomRight;
  //
  const CustomCard({
    Key? key,
    required this.height,
    required this.rTopLeft,
    required this.rBottomLeft,
    required this.rBottomRight,
    required this.rTopRight,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 7,
            blurRadius: 15,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(rBottomLeft),
          bottomRight: Radius.circular(rBottomRight),
          topLeft: Radius.circular(rTopLeft),
          topRight: Radius.circular(rTopRight),
        ),
      ),
      child: child,
    );
  }
}
