import 'package:diy/ui/auth_screens/forget_password.dart';
import 'package:diy/ui/common_widgets/gradient_button.dart';
import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class ServiceLicensePage extends StatelessWidget {
   ServiceLicensePage({Key? key}) : super(key: key);
  TextEditingController nameController = TextEditingController(),licenseController = TextEditingController();

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
               Image.asset(MyImgs.licensePlaceholder),
                SizedBox(height: 32,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      Strings.serviceLicense,
                      style: Styles.headingOrangeTextStyle,
                    ),
                  ],
                ),
                SizedBox(height: 32,),

                Text(
                  Strings.serviceLicenseString,
                  style: TextStyle(color: MyColors.blueText),
                  maxLines: 4,
                ),
                SizedBox(height: 32,),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: Strings.name,
                      labelText: Strings.name,
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: Strings.licenseNumber,
                      labelText: Strings.licenseNumber,
                    ),
                    controller:licenseController ,
                  ),
                ),Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: Strings.expiry,
                      labelText: Strings.expiry,
                    ),
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
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPassword()));},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
