import 'package:diy/ui/common_widgets/circular_illustration_placeholder.dart';
import 'package:diy/ui/common_widgets/gradient_button.dart';
import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircularIllustrationPlaceholder(
                    placeholderText: "Animation/illustration"),
                SizedBox(height: 32,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      Strings.forgotPassword,
                      style: Styles.headingOrangeTextStyle,
                    ),
                  ],
                ),

                SizedBox(height: 32,),
                Text(
                  Strings.forgetPasswordString,
                  style: TextStyle(color: MyColors.blueText),
                  maxLines: 5,
                ),
                SizedBox(height: 32,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: Strings.email,
                      labelText: Strings.email,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 32,),

                Text(
                  Strings.dummyString,
                  style: TextStyle(color: MyColors.blueText),
                  maxLines: 2,
                ),
                SizedBox(height: 32,),

                GradientButton(
                  borderRadius: 32,
                  childWidget: Text(
                    Strings.submit,
                    style: TextStyle(
                        color: MyColors.blueText, fontWeight: FontWeight.w700),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
