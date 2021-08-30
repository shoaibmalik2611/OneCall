import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  final double? height, width;

  SpacerWidget({this.height = 0, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
