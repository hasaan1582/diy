import 'package:diy/ui/common_widgets/gradient_button.dart';
import 'package:diy/ui/welcome_screens/welcome2.dart';
import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class Welcome1 extends StatelessWidget {
  const Welcome1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImgs.welcomeImage1),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(MyImgs.appLogoWhite),
              Container(),
              Container(),
              Container(),
              Column(
                children: [
                  Text(Strings.renovationIsATapAway),
                  SizedBox(height: 16,),
                  GradientButton(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome2()));},childWidget: Text(Strings.getStarted),),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
