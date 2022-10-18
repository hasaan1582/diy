import 'package:diy/values/values.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  DashBoard({Key? key}) : super(key: key);
  List<String> categoryItems = [
    "Interior Design",
    "Roofing & gutter",
    "Home Renos",
    "Kitchen Remodel",
    "Bathroom Remodel"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 0,
                      child: Container(
                        height: 198,
                        width: MediaQuery.of(context).size.width - 24,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              MyColors.secondary,
                              MyColors.primary,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          Strings.sliderTutorialMsg,
                          style: TextStyle(color: Colors.white70),
                        )),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        // height: 55,
                        width: MediaQuery.of(context).size.width - 60,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                          child: ListTile(
                            title: TextField(
                              // controller: homeController.search,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: Strings.whatDoYouWantHelpWith,
                                  hintStyle:
                                      TextStyle(color: MyColors.blueText)),
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: IconButton(
                                  icon: Icon(
                                    Icons.search,
                                    color: MyColors.blueText,
                                  ),
                                  onPressed: () {},
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                Strings.browseCategories,
                style: Styles.blueHeadingStyle,
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 85,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(8.0),
                  itemCount: categoryItems.length,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    height: 75,
                    width: 87,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.cabin,
                            color: MyColors.blueText,
                          ),
                          Text(
                            categoryItems[index],
                            style: TextStyle(
                              color: MyColors.blueText,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                Strings.popularInYourArea,
                style: Styles.blueHeadingStyle,
              ),
              SizedBox(
                height: 280,
                child: GridView.count(
                  shrinkWrap: true,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 16,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  padding:
                      EdgeInsets.only(top: 8, left: 6, right: 6, bottom: 12),
                  children: List.generate(
                      6,
                      (index) => Container(
                            height: 135,
                            width: 135,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  MyColors.secondary,
                                  MyColors.primary,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                Strings.recommendedServicesNearby,
                style: Styles.blueHeadingStyle,
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(12),
                    padding: EdgeInsets.all(16),
                    height: 135,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10)),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             CircleAvatar(backgroundColor: Colors.grey,radius: 40,)
                           ],
                         ),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Column(
                               children: [
                                 Text("Morbius Stone flooring",style: Styles.normal.copyWith(color: MyColors.blueText),),
                                SizedBox(height: 4,),
                                 Row(children: [
                                   Icon(Icons.star,size: 16,color: Colors.yellow,),
                                   Icon(Icons.star,size: 16,color: Colors.yellow,),
                                   Icon(Icons.star,size: 16,color: Colors.yellow,),
                                   Icon(Icons.star,size: 16,color: Colors.yellow,),
                                   Icon(Icons.star,size: 16,color: Colors.grey,),
                                   Text("(3,433)", style: TextStyle(color: Colors.grey),)
                                 ],),
                               ],
                             ),
                             Row(
                               children: [
                                 Icon(Icons.phone,color: MyColors.blueText,),
                                 Text("746 363 9129",style: Styles.blueHeadingStyle,),
                               ],
                             ),
                           ],
                         ),
                       ],
                     ),
                      ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
