import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:untitled_44/EditStore.dart';
import 'package:untitled_44/MyCart.dart';
import 'package:untitled_44/StoreProfile.dart';
import 'package:untitled_44/Wishlist.dart';

class MyProduct extends StatelessWidget {
  const MyProduct({Key? key}) : super(key: key);

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
                'My Store',
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
            padding: const EdgeInsets.only(top: 20),
            child: IconButton(
                icon: Icon(Icons.favorite),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (
                    context) => Wishlist()));
              },
            )
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: (){
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 270,
              width: 360,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SvgPicture.asset(
                        "assets/icon/tradly Medium.svg"
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Tradly Store",
                      style:  TextStyle(
                            fontFamily: "Montserrat-Bold",
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                        color: Color(0xFF4F4F4F)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Edit Store',
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                              color: Color(0xFF33907C)
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 2, color:Color(0xFF33907C)),
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 40),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // side: BorderSide(color:Colors.green),
                            backgroundColor: Color(0xFF33907C),
                            elevation: 3, //elevation of button
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 40),
                          ), onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (
                              context) => StoreProfile()));
                        },
                          child: Text(
                            "View Store",
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Divider(
                      color: Colors.black12,
                      thickness: 1,
                      indent: 10,
                      // endIndent: 10,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "Remove  Store",
                      style:  TextStyle(
                            fontFamily: "Montserrat-Medium",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF4F4F4F),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'search Product',
                    prefixIcon: Icon(
                        Icons.search,
                      color: Color(0xFF13B58C)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(25.7),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(50),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 20),
                  child: Text(
                    'Products',
                    style:  TextStyle(
                          fontFamily: "Montserrat-Bold",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding:EdgeInsets.only(left: 10),
                        child: Container(
                        height: 180,
                        width: 160,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/image/Brocolli.png',
                                    // height: 130,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Align(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white24,
                                                borderRadius: BorderRadius.circular(70)
                                            ),
                                            child:  IconButton(
                                              icon: Icon(Icons.border_color),
                                              onPressed: (){
                                                Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (_) => MyProduct(),
                                                  ),
                                                );
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const EditStore()),
                                                );
                                              },
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 30),
                                        child: Align(
                                          // alignment: Alignment.centerLeft,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white24,
                                                borderRadius: BorderRadius.circular(70)
                                            ),
                                            child: IconButton(
                                              icon: Icon(Icons.delete_sharp),
                                              onPressed: (){
                                                print("Hello");
                                              },
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Brocolli",
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 05),
                                  child: Text(
                                      "Tradly",
                                      style:  TextStyle(
                                          fontFamily: "Montserrat-Medium",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black38
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30),
                                  child: Text(
                                    "\$35",
                                    style:  TextStyle(
                                        fontFamily: "Montserrat-Regular",
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        decoration: TextDecoration.lineThrough
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "\$15",
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
                  ),
                  Padding(
                  padding: EdgeInsets.only(left: 20,right: 10),
                  child: Container(
                    height: 180,
                    width: 160,
                    decoration: DottedDecoration(
                        shape: Shape.box,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            iconSize: 50,
                            onPressed: (){
                              print("Add Me");
                            },
                            color: Colors.black12,
                          ),
                        ),
                        Text(
                          "Add Product",
                          style:  TextStyle(
                            fontFamily: "Montserrat-Medium",
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF4F4F4F),
                          ),
                        )
                      ],
                    ),
                  )
                  )
          ]
        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
