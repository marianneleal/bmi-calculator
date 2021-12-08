import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  final Color color;
  final Widget containerChild;
  final Function tapFunction;

  myContainer({this.color, this.containerChild, this.tapFunction});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapFunction,
      child: Container(
        child: containerChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
