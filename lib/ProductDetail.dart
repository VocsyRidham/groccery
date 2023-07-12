import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled_44/MyCart.dart';
import 'package:untitled_44/StoreProfile.dart';
import 'package:untitled_44/Wishlist.dart';
import 'package:untitled_44/loginpage.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 34),
                      child: Container(
                        child: Column(
                          children: [
                            ImageSlideshow(
                              indicatorColor: Colors.blue,
                              onPageChanged: (value) {
                                debugPrint('Page changed: $value');
                              },
                              autoPlayInterval: 3000,
                              isLoop: false,
                              children: [
                                Image.asset(
                                  'assets/image/CocaCola.png',
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                        left: 10,
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    Positioned(
                        top: 50,
                        left: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    Positioned(
                        top: 50,
                        left: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (
                                      context) => Wishlist()));
                                },
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                    Positioned(
                        top: 50,
                        left: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white30,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )
                    ),
                  ],
                ),
                Container(
                  height: 80,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10,left: 20),
                            child: Text(
                              "Coca Cola",
                              style:  TextStyle(
                                    fontFamily: "Montserrat-Bold",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF4F4F4F),

                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Text(
                              "\$25",
                              style:  TextStyle(
                                  fontFamily: "Montserrat-Bold",
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF33907C),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10,top: 10),
                            child: Text(
                              "\$50",
                              style:  TextStyle(
                                    fontFamily: "Montserrat-Medium",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF4F4F4F),
                                  decoration: TextDecoration.lineThrough
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 02),
                            child: Text(
                              "50% off ",
                              style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4F4F4F),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  color: Colors.white,
                  height: 72,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          child: SvgPicture.asset(
                              "assets/icon/tradly1.svg"
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Tradly Store",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4F4F4F)

                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 120)),
                      ElevatedButton(
                        child: Text("Follow"),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => loginpage(),
                            ),
                          );
                          Navigator.of(context).push(MaterialPageRoute(builder: (
                              context) => StoreProfile()));

                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF33907C),
                          onPrimary: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 280,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 50,left: 35,right: 20),
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lobortis cras placerat diam ipsum ut. Nisi vel adipiscing massa bibendum diam. Suspendisse mattis dui maecenas duis mattis. Mattis aliquam at arcu, semper nunc, venenatis et pellentesque eu. Id tristique maecenas tristique habitasse eu elementum sed. Aliquam eget lacus, arcu, adipiscing eget feugiat in dolor sagittis.",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Regular",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF4F4F4F)

                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10,left: 35,right: 20),
                                child: Text(
                                  "Non commodo, a justo massa porttitor sed placerat in. Orci tristique etiam tempus sed. Mi varius morbi egestas dictum tempor nisl. In",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Regular",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                          color: Color(0xFF4F4F4F)

                                  ),
                                ),
                              ),
                            ],
                          )
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 230,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 35),
                            child: Text(
                                'Details',
                                style:  TextStyle(
                                      fontFamily: "Montserrat-SemiBold",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000)
                                )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30,left: 35),
                            child: Text(
                                'Condition',
                                style:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 18,
                                      color: Color(0xFF4F4F4F),
                                      fontWeight: FontWeight.w400,

                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 45,top: 30),
                            child: Text(
                                "Organic",
                                style:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 14,
                                      color: Color(0xFF4F4F4F),
                                      fontWeight: FontWeight.w400,
                                )
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 35),
                            child: Text(
                                'Price Type',
                                style:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 18,
                                      color: Color(0xFF4F4F4F),
                                      fontWeight: FontWeight.w400,

                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,top: 25),
                            child: Text(
                                "Fixed",
                                style:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 14,
                                      color: Color(0xFF4F4F4F),
                                      fontWeight: FontWeight.w400,

                                )
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 35),
                            child: Text(
                                'Category',
                                style:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 18,
                                      color: Color(0xFF4F4F4F),
                                      fontWeight: FontWeight.w400,

                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50,top: 20),
                            child: Text(
                                "Beverages",
                                style:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 14,
                                      color: Color(0xFF4F4F4F),
                                      fontWeight: FontWeight.w400,

                                )
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 35),
                            child: Text(
                                'Location',
                                style:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 18,
                                      color: Color(0xFF4F4F4F),
                                      fontWeight: FontWeight.w400,

                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 55,top: 25),
                            child: Text(
                                "Kualalumpur, Malaysia",
                                style:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 14,
                                      color: Color(0xFF4F4F4F),
                                      fontWeight: FontWeight.w400,

                                )
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  height: 100,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 35),
                            child: Text(
                                "Additional Details",
                                style:  TextStyle(
                                      fontFamily: "Montserrat-SemiBold",
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                  color: Color(0xFF000000)
                                )
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 35),
                            child: Text(
                                "Delivery Details",
                                style:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 14,
                                      color: Color(0xFF4F4F4F),
                                      fontWeight: FontWeight.w400,

                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 32,top: 25),
                            child: Container(
                              height: 30,
                              width: 193,
                              // color: Colors.black,
                              child: Text(
                                  "Home Delivery Available,   Cash On Delivery",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 14,
                                        color: Color(0xFF4F4F4F),
                                        fontWeight: FontWeight.w400,

                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: EdgeInsets.only(top: 8,left: 3,bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: MaterialButton(
              minWidth: double.infinity,
              height:30,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (
                    context) => MyCart()));
              },
              color: Color(0xFF33907C),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Text(
                "Add To Cart",
                style:  TextStyle(
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 18,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600,

                )
              ),
            ),
          ),
        ),
      ),
    );
  }
}
