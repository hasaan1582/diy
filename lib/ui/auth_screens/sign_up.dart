import 'package:diy/ui/auth_screens/service_license_page.dart';
import 'package:diy/ui/common_widgets/circular_illustration_placeholder.dart';
import 'package:diy/ui/common_widgets/gradient_button.dart';
import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController fNameController = TextEditingController(),
      lNameController = TextEditingController(),
      licenseIdController = TextEditingController(),
      serviceTypeController = TextEditingController(),
      availabilityController = TextEditingController(),
      emailController = TextEditingController(),
      passwordController = TextEditingController(),
      confirmPasswordController = TextEditingController();

  bool passwordObscure = true, confirmPasswordObscure = true, checkValue = false;

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
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      Strings.signup,
                      style: Styles.headingOrangeTextStyle,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    controller: fNameController,
                    decoration: InputDecoration(
                      hintText: Strings.firstName,
                      labelText: Strings.firstName,
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    controller: lNameController,
                    decoration: InputDecoration(
                      hintText: Strings.lastName,
                      labelText: Strings.lastName,
                    ),
                    keyboardType: TextInputType.name,
                  ),
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
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    controller: licenseIdController,
                    decoration: InputDecoration(
                      hintText: Strings.drivingLicense,
                      labelText: Strings.drivingLicense,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    controller: serviceTypeController,
                    decoration: InputDecoration(
                      hintText: Strings.serviceType,
                      labelText: Strings.serviceType,
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ), Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    controller: availabilityController,
                    decoration: InputDecoration(
                      hintText: Strings.availability,
                      labelText: Strings.availability,
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                        hintText: Strings.confirmPassword,
                        labelText: Strings.confirmPassword,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              confirmPasswordObscure = !confirmPasswordObscure;
                            });
                          },
                          icon: passwordObscure
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                        )),
                    obscureText: confirmPasswordObscure,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Checkbox(value: checkValue, onChanged: (val){
                      setState(() {
                        checkValue = val!;
                      });
                    }),
                    Text(
                      Strings.iAgreeToThe,
                      style: TextStyle(color: MyColors.blueText, fontSize: 11),
                    ), GestureDetector(
                      onTap: (){},
                      child: Text(
                        " ${Strings.siteLink} ",
                        style: TextStyle(color: Colors.blue, fontSize: 11,decoration: TextDecoration.underline),
                      ),
                    ), Text(
                      Strings.termsAndConditions + ".",
                      style: TextStyle(color: MyColors.blueText, fontSize: 11),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                GradientButton(
                  borderRadius: 32,
                  childWidget: Text(
                    Strings.nextString,
                    style: TextStyle(
                        color: MyColors.blueText, fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ServiceLicensePage()));
                  },
                ),
                SizedBox(
                  height: 32,
                ),
                Column(
                  children: [
                    Text(
                      Strings.alreadyHaveAnAccount,
                      style: TextStyle(
                        color: MyColors.blueText,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      Strings.login,
                      style: TextStyle(
                          color: MyColors.blueText,
                          fontWeight: FontWeight.w700),
                    ),
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
