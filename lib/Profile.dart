import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled_44/MyCart.dart';
import 'package:untitled_44/Wishlist.dart';
import 'package:untitled_44/loginpage.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F9FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Profile",
                style:  TextStyle(
                      fontFamily: "Montserrat-Bold",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),

                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: IconButton(
              icon: Icon(
                Icons.favorite,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (
                    context) => Wishlist()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (
                    context) => MyCart()));
              },
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Container(),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xFF33907C),
            height: 280,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 30),
                      child: Stack(
                        children: [
                          Container(
                            height: 66,
                            width: 66,
                            child: SvgPicture.asset(
                                "assets/icon/TradlyProfileLogo.svg"
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40,left: 45),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30,left: 8),
                              child: Text(
                                "Tradly Team",
                                style:  TextStyle(
                                      fontFamily: "Montserrat-Bold",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFFFFF),

                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5,top: 5),
                              child: Text(
                                "+1 9998887776",
                                style:  TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFFFFFFFF)

                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5,top: 3),
                              child: Text(
                                "info@tradly.co",
                                style:  TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFFFFFFFF)

                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 70),
              width: 307,
              height: 305,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFFFFFFF),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextButton(
                          child: Text(
                            "Edit Profile",
                            style:  TextStyle(
                                    fontFamily: "Montserrat-Medium",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                color: Color(0xFF4F4F4F)
                            )
                          ),
                          onPressed: (){},
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13,right: 13),
                    child: Divider(
                      height: 3,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextButton(
                          child: Text(
                            "Language & Currency",
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                color: Color(0xFF4F4F4F)
                            ),
                          ),
                          onPressed: (){},
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13,right: 13),
                    child: Divider(
                      height: 3,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextButton(
                          child: Text(
                            "Feedback",
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                color: Color(0xFF4F4F4F)
                            ),
                          ),
                          onPressed: (){},
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13,right: 13),
                    child: Divider(
                      height: 3,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextButton(
                          child: Text(
                            "Refer a Friend",
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                color: Color(0xFF4F4F4F)
                            ),
                          ),
                          onPressed: (){},
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13,right: 13),
                    child: Divider(
                      height: 3,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextButton(
                          child: Text(
                            "Terms & Conditions",
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                              color: Color(0xFF4F4F4F)
                            ),
                          ),
                          onPressed: (){},
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13,right: 13),
                    child: Divider(
                      height: 3,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextButton(
                          child: Text(
                            "Logout",
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF33907C),

                            ),
                          ),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (
                                context) => loginpage()));
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
