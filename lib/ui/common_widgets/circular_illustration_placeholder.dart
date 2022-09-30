import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class CircularIllustrationPlaceholder extends StatelessWidget {
 CircularIllustrationPlaceholder({Key? key, required this.placeholderText}) : super(key: key);
String placeholderText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.width*0.64,
        width: MediaQuery.of(context).size.width*0.64,
        decoration: BoxDecoration(
          color: MyColors.gradientMix,
          borderRadius: BorderRadius.circular(128),
        ),
        child: Center(
          child: Text(
              placeholderText,
          ),
        ),
      ),
    );
  }
}
