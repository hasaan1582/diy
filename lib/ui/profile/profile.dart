import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
 Profile({Key? key}) : super(key: key);
List<String> list = ["Edit Settings","Payment Method","General Settings","Help","Contact us","Change password"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: Column(
          children: [
            SizedBox(
              height: 310,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      height: 227,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            MyColors.secondary,
                            MyColors.primary,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: (){}, icon: Icon(Icons.menu_rounded, color: Colors.white,)),
                              IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,))
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                          Center(
                              child: Text(
                                Strings.sliderTutorialMsg,
                                style: TextStyle(color: Colors.white70),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Column(
                      children: [
                        CircleAvatar(radius: 40,backgroundColor: Colors.grey,),
                        SizedBox(height: 16),
                        Text("Lucas Bravo",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 4),
                        Text("New Jersey",style: TextStyle(color: Colors.grey,fontSize: 12),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context,index)=>Container(
              margin: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
              height: 70,
              decoration: BoxDecoration(color: MyColors.primary,borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text(list[index],style: TextStyle(color: Colors.white),),Icon(Icons.arrow_forward_ios,color: Colors.white,)],
              ),
            ))
          ],

        )),
      ),
    );
  }
}
