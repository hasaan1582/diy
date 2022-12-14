import 'package:diy/ui/auth_screens/login.dart';
import 'package:diy/ui/common_widgets/gradient_button.dart';
import 'package:diy/ui/dashboard/dashboard.dart';
import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class Welcome4 extends StatelessWidget {
  const Welcome4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImgs.welcomeImage4),
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
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.35),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(Strings.renovationIsATapAway)),
                  SizedBox(height: 16,),
                  GradientButton(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));},childWidget: Text(Strings.getStarted),),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
