import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  final Color inactiveColor;
  final Widget containerChild;

  myContainer(this.inactiveColor, this.containerChild);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: containerChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: inactiveColor, borderRadius: BorderRadius.circular(10)),
    );
  }
}
