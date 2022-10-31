import 'package:diy/ui/welcome_screens/welcome1.dart';
import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  Splash({Key? key, this.colored = true}) : super(key: key);
bool colored = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>colored?Welcome1():Splash()));},
        child: SafeArea(
          child: Container(
            decoration: colored? BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    MyColors.secondary,
                   MyColors.primary,
                  ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ):BoxDecoration(),
            child: Center(child: colored?Image.asset(MyImgs.appLogoWhite,):Image.asset(MyImgs.appLogoColored),),
          ),
        ),
      ),
    );
  }
}
