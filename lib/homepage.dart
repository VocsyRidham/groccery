import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled_44/Beverages.dart';
import 'package:untitled_44/Bread&Bakery.dart';
import 'package:untitled_44/Egg.dart';
import 'package:untitled_44/Frozenveg.dart';
import 'package:untitled_44/Fruit.dart';
import 'package:untitled_44/HomeCare.dart';
import 'package:untitled_44/PetCare.dart';
import 'package:untitled_44/ProductDetail.dart';
import 'package:untitled_44/StoreProfile.dart';
import 'package:untitled_44/Vegetables.dart';
import 'MyCart.dart';
import 'Wishlist.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ///=============================== Store Profile==============================================
  List bimg0 = [
    "assets/image/vegitable.png",
    "assets/image/GrpceriesStorefruite.png",
  ];
  List stittle0 = [
    "pack Store",
    "Groceries store",
  ];
  List pimg0 = [
    "assets/icon/tradlysimbole.svg",
    "assets/icon/GroceriesStoresimbole.svg"
  ];
  ///=============================== New Product==============================================
  List img0 = [
    "assets/image/coca.png",
    "assets/image/Brocolli.png"
  ];
  List title0 = [
    'Coca Cola',
    'Brocolli'
  ];
  ///=============================== Popular Product==============================================
  List img2 = [
    "assets/image/Fish.png",
    "assets/image/Shampoo.png"
  ];
  List tittle1=[
    "Fish",
    "Shampoo"
  ];
  ///=============================== Product Box==============================================
  List img1=[
    "assets/image/bevrages.png",
    "assets/image/Bread & Bakery.png",
    "assets/image/Vegetables.png",
    "assets/image/Fruit1.png",
    "assets/image/Egg2.png",
    "assets/image/Frozen veg.png",
    "assets/image/Homecare.png",
    "assets/image/Pet Care.png",
  ];
  List title1=[
    "Beverages",
    "Bread & Bakery",
    "Vegetables",
    "Fruit",
    "Egg",
    "Frozen veg",
    "Homecare",
    "Pet Care",
  ];
  final List<Widget> widgets =[
    Beverages(),
    Bread(),
    Vegetables(),
    Fruit(),
    Egg(),
    Frozenveg(),
    HomeCare(),
    PetCare()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        title:Row(
          children: [
            Text(
              'Groceries',
              style:  TextStyle(
                    fontFamily: "Montserrat-Bold",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.heart_fill),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Wishlist()));
            },
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyCart()));
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 10),
                child: Container(
                  height: 14,
                  width: 14,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red
                  ),
                ),
              )
            ],
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'search Product',
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(25.7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(50),
                    ),
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 14.0, bottom: 12.0),
                  filled: true,
                  fillColor: Colors.white
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 1176,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image/carsoul1.png')
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 50,left: 30),
                                  child: Text(
                                    'READY TO DELIVER TO',
                                    style:  TextStyle(
                                      fontFamily: "Montserrat-SemiBold",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    'YOUR HOME',
                                    style:  TextStyle(
                                      fontFamily: "Montserrat-SemiBold",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 30),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10,),
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(
                                        side: BorderSide(color: Colors.white),
                                      ),
                                    ),
                                    child: Text(
                                      'Start Shopping',
                                      style: TextStyle(
                                        fontFamily: "Montserrat-Bold",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 180,
                  child: GridView.builder(
                    physics: ScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 2
                      ),
                      itemCount: img1.length,
                      itemBuilder: (BuildContext context, int index){
                        final widget = widgets[index];
                        return InkWell(
                          child: Container(
                            height: 93,
                            width: 93,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(img1[index])
                                )
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                title1[index],
                                style:  TextStyle(
                                  fontFamily: "Montserrat-SemiBold",
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => widget,
                              ),
                            );
                          },
                        );
                      }
                  )
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 20),
                    child: Text(
                      'New Product',
                      style:  TextStyle(
                        fontFamily: "Montserrat-Bold",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20,left: 140),
                    child: ElevatedButton(
                      child: Text(
                        "See All",
                        style: TextStyle(
                          fontFamily: "Montserrat-Medium",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF133907C),
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 200,
                child: GridView.builder(
                    padding: EdgeInsets.only(top: 18,right: 10),
                  scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                    ),
                    itemCount: img0.length,
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: InkWell(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  child: Image.asset(
                                      img0[index]
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 05),
                                      child: Text(
                                        title0[index],
                                        style:  TextStyle(
                                            fontFamily: "Montserrat-Medium",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF4A4A4A)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,top: 05),
                                      child: Container(
                                        child: SvgPicture.asset("assets/icon/tradly small.svg"),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 05)),
                                    Text(
                                      "Tradly",
                                      style:  TextStyle(
                                          fontFamily: "Montserrat-Medium",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF4F4F4F)
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 60),
                                      child: Text(
                                        "\$25",
                                        style:  TextStyle(
                                          fontFamily: "Montserrat-SemiBold",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF33907C),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onTap: () => _navigateToQuizPage(context)
                        ),
                      );
                    }
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding:EdgeInsets.only(top: 20,left: 20),
                    child: Text(
                      'Popular Product',
                      style: TextStyle(
                        fontFamily: "Montserrat-Bold",
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10,left: 120),
                    child: ElevatedButton(
                      child: Text(
                        "See All",
                        style:  TextStyle(
                          fontFamily: "Montserrat-Medium",
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF33907C),
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: 200,
                child: GridView.builder(
                    padding:  EdgeInsets.only(top: 18,right: 10),
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                    ),
                    itemCount: img2.length,
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset(
                                    img2[index]
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 05),
                                    child: Text(
                                      tittle1[index],
                                      style:  TextStyle(
                                          fontFamily: "Montserrat-Medium",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF4A4A4A)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 05),
                                    child: Container(
                                      child: SvgPicture.asset("assets/icon/tradly small.svg"),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 05)),
                                  Text(
                                    "Tradly",
                                    style:  TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF4F4F4F)
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 60),
                                    child: Text(
                                      "\$25",
                                      style:  TextStyle(
                                        fontFamily: "Montserrat-SemiBold",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF33907C),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              SizedBox(
                height: 20,
              ),
             Stack(
               children: [
                 Container(
                   height: 190,
                   width: MediaQuery.of(context).size.width,
                   color: Color(0xFF33907C),
                   child: Column(
                     children: [
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(top: 10,left: 25),
                             child: Text(
                               "Store to follow",
                               style:  TextStyle(
                                 fontFamily: "Montserrat-Bold",
                                 fontSize: 18,
                                 fontWeight: FontWeight.w700,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                           Padding(
                             padding: EdgeInsets.only(top: 10,left: 125),
                             child: ElevatedButton(
                               child: Text(
                                 "View all",
                                 style:  TextStyle(
                                   fontFamily: "Montserrat-Medium",
                                   fontSize: 12,
                                   fontWeight: FontWeight.w500,
                                   color: Color(0xFF33907C)
                                 ),
                               ),
                               onPressed: () {},
                               style: ElevatedButton.styleFrom(
                                 primary: Color(0xFFFFFFFF),
                                 onPrimary: Color(0xFF13B58C),
                                 padding: EdgeInsets.symmetric(horizontal: 30),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(32.0),
                                 ),
                               ),
                             ),
                           )
                         ],
                       ),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 63),
                   child: SizedBox(
                     height: 200,
                     child: GridView.builder(
                         padding: const EdgeInsets.only(right: 10),
                         scrollDirection: Axis.horizontal,
                         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                           maxCrossAxisExtent: 200,
                           crossAxisSpacing: 20,
                           mainAxisExtent: 180,
                         ),
                         itemCount: img2.length,
                         itemBuilder: (BuildContext context, int index){
                           return Padding(
                             padding: const EdgeInsets.only(left: 20),
                             child: Container(
                               height: 200,
                               width: MediaQuery.of(context).size.width * 0.6,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: Colors.white,
                               ),
                               child: Stack(
                                 children: [
                                   Image.asset(
                                       bimg0[index]
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 50),
                                     child: Align(
                                       alignment: Alignment.topCenter,
                                       child: SvgPicture.asset(
                                         pimg0[index],
                                       ),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 63),
                                     child: Align(
                                       alignment: Alignment.center,
                                       child: Text(
                                         stittle0[index],
                                         style:  const TextStyle(
                                           fontFamily: "Montserrat-Medium",
                                           fontSize: 14,
                                           fontWeight: FontWeight.w500,
                                         ),
                                       ),
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 140),
                                     child: Align(
                                       alignment: Alignment.topCenter,
                                       child: ElevatedButton(
                                         onPressed: () => _navigateToQuizPage1(context),
                                         style: ElevatedButton.styleFrom(
                                           fixedSize: Size(100, 20),
                                           primary: Color(0xFF33907C),
                                           onPrimary: Colors.white,
                                           // padding: EdgeInsets.symmetric(horizontal: 40),
                                           shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(20.0),
                                           ),
                                         ),
                                         child: const Text(
                                           "Follow",
                                           style:  TextStyle(
                                             fontFamily: "Montserrat-Medium",
                                             fontSize: 12,
                                             fontWeight: FontWeight.w500,
                                           ),
                                         ),
                                       ),
                                     ),
                                   )
                                 ],
                               ),
                             ),
                           );
                         }
                     ),
                   ),
                 ),
               ],
             ),
          ]
        ),
      ),
    )
    );
  }
  void _navigateToQuizPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const ProductDetail()));
  }
  void _navigateToQuizPage1(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => const StoreProfile()));
  }
}