import 'package:diy/ui/common_widgets/gradient_button.dart';
import 'package:diy/ui/welcome_screens/welcome3.dart';
import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class Welcome2 extends StatelessWidget {
  const Welcome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImgs.welcomeImage2),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(),
              Container(),
              Container(),
              Container(),
              Container(),
              Column(
                children: [
                  Text(Strings.renovationIsATapAway),
                  SizedBox(height: 16,),
                  GradientButton(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome3()));},childWidget: Text(Strings.getStarted),),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
