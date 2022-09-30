import 'package:diy/ui/common_widgets/circular_illustration_placeholder.dart';
import 'package:diy/ui/common_widgets/gradient_button.dart';
import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController(),
      passwordController = TextEditingController();

  bool passwordObscure = true;

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
                      Strings.login,
                      style: Styles.headingOrangeTextStyle,
                    ),
                  ],
                ),

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
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        hintText: Strings.password,
                        labelText: Strings.password,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordObscure = !passwordObscure;
                            });
                          },
                          icon: passwordObscure
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        )),
                    obscureText: passwordObscure,
                    keyboardType: TextInputType.visiblePassword,
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
                    Strings.continueString,
                    style: TextStyle(
                        color: MyColors.blueText, fontWeight: FontWeight.w700),
                  ),
                  onTap: () {},
                ),
                SizedBox(height: 32,),

                Column(
                  children: [
                    Text(Strings.dontHaveAnAccount, style: TextStyle(
                        color: MyColors.blueText,),),
                    SizedBox(height: 16,),
                    Text(Strings.createNow, style: TextStyle(
                        color: MyColors.blueText, fontWeight: FontWeight.w700),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
