import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  final Color color;
  final Widget containerChild;

  myContainer(this.color, this.containerChild);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: containerChild,
      margin: EdgeInsets.all(15.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
