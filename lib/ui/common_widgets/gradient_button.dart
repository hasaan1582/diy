import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
   GradientButton({Key? key,required this.childWidget, required this.onTap, this.borderRadius = 8, this.horizontalPadding = 64}) : super(key: key);
Widget childWidget;
double borderRadius, horizontalPadding;
Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12,horizontal: horizontalPadding),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              MyColors.secondary,
              MyColors.primary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child:childWidget,
      ),
    );
  }
}
