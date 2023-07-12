import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled_44/AddProduct.dart';
import 'package:untitled_44/MyCart.dart';
import 'package:untitled_44/MyProduct.dart';
import 'package:untitled_44/StoreProfile.dart';
import 'package:untitled_44/Wishlist.dart';

class MyStore1 extends StatelessWidget {
  const MyStore1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F9FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            padding: EdgeInsets.only(right: 10,top: 20),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (
                    context) => MyCart()));
              },
            )
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Container(),
        ),
      ),
      body: Column(
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
              Text(
                "Tradly Store",
                style:  TextStyle(
                      fontFamily: "Montserrat-Bold",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                  color: Color(0xFF4F4F4F)
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
                        backgroundColor: Color(0xFF33907C),
                        // side: BorderSide(color:Colors.green),
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
                  style: TextStyle(
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
            padding: const EdgeInsets.only(top: 60),
            child: Text(
              "You dont have product",
              style:  TextStyle(
                    fontFamily: "Montserrat-SemiBold",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                color: Color(0xFF000000)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MyProduct(),
                  ),
                );
                Navigator.of(context).push(MaterialPageRoute(builder: (
                    context) => AddProduct()));
              },
              child: Text(
                'Add Product',
                style:  TextStyle(
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF33907C),
                ),
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1, color:Color(0xFF33907C)),
                shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.8)
                ),
                padding: EdgeInsets.symmetric(horizontal: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
