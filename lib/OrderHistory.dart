import 'package:flutter/material.dart';
import 'package:untitled_44/MyCart.dart';
import 'package:untitled_44/Wishlist.dart';


class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

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
                "Order History ",
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
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 10),
                child: Text(
                  "Transactions",
                  style: TextStyle(
                        fontFamily: "Montserrat-Bold",
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                    color: Color(0xFF212121)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 15),
                child: Container(
                  height: 20,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green.shade100,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Januari 2020",
                      style:  TextStyle(
                            fontFamily: "Montserrat-Bold",
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF13B58C),

                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child: Container(
                          height: 45,
                          width: 45,
                          // color: Colors.black,
                          child: Image.asset(
                            "assets/image/cocacolasmall1.png"
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 07,top: 15),
                                child: Text(
                                    "Coca Cola",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                    color: Color(0xFF212121)
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "\$25",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Bold",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                          color: Color(0xFF33907C),

                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 05),
                                child: Text(
                                  "50% off ",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                          decoration: TextDecoration.lineThrough,
                                    color: Color(0xFF4F4F4F)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 75,top: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // side: BorderSide(color:Colors.green),
                            elevation: 3,
                            backgroundColor: Color(0xFF33907C),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 40),
                          ), onPressed: () {},
                          child: Text(
                            "Delivered",
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child: Container(
                          height: 45,
                          width: 45,
                          // color: Colors.black,
                          child: Image.asset(
                              "assets/image/cocacolasmall1.png"
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 15),
                                child: Text(
                                  "Coca Cola",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                    color: Color(0xFF4F4F4F)
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text(
                                  "\$25",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Bold",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF33907C),

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 72,top: 10),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Order placed",
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                              color: Color(0xFF33907C)
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 2, color:Color(0xFF33907C),),
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 40),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child: Container(
                          height: 45,
                          width: 45,
                          // color: Colors.black,
                          child: Image.asset(
                              "assets/image/cocacolasmall1.png"
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 15),
                                child: Text(
                                  "Coca Cola",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                    color: Color(0xFF4F4F4F)
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text(
                                  "\$25",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Bold",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF33907C),

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 47,top: 10),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Payment confirmed",
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                              color: Color(0xFF33907C)
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 2, color:Color(0xFF33907C),),
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 40),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child: Container(
                          height: 45,
                          width: 45,
                          // color: Colors.black,
                          child: Image.asset(
                              "assets/image/cocacolasmall1.png"
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 15),
                                child: Text(
                                  "Coca Cola",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                    color: Color(0xFF4F4F4F)
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Text(
                                  "\$25",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Bold",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF33907C),

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 82,top: 10),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Processed",
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF13B58C),

                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 2, color:Color(0xFF33907C),),
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 40),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
