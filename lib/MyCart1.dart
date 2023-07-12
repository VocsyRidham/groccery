import 'package:flutter/material.dart';
import 'package:untitled_44/NewAddress.dart';
import 'package:untitled_44/Paymentoption.dart';

class MyCart1 extends StatefulWidget {
   final String Name;
   final String Streetaddress;
   final String Zipcode;
  const MyCart1({Key? key,required this.Name,required this.Streetaddress,required this.Zipcode}) : super(key: key);

  @override
  State<MyCart1> createState() => _MyCart1State();
}

class _MyCart1State extends State<MyCart1> {

  String dropdownvalue = 'Qty : 1';
  var items = [
    'Qty : 1',
    'Qty : 2',
    'Qty : 3',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 46),
                  child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => NewAddress()));
                      },
                      icon:Icon(
                          Icons.arrow_back_sharp,
                          size: 25,
                          color: Colors.white
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90,bottom: 45),
                  child: Center(
                      child: Text(
                        "My Cart",
                        style:  TextStyle(
                              fontFamily: "Montserrat-Bold",
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                        ),
                      )
                  ),
                ),
              ],
            )
        ),
      ),
      body: Column(
          children: [
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 05),
                            child: Text(
                              "Deliver to",
                              style:  TextStyle(
                                    fontFamily: "Montserrat-Medium",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                color: Color(0xFF4F4F4F)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 02,top: 10),
                            child: Text(
                              widget.Name,
                              style:  TextStyle(
                                    fontFamily: "Montserrat-Medium",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                color: Color(0xFF4F4F4F)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 02),
                            child: Text(
                              widget.Zipcode,
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
                            padding: const EdgeInsets.only(top: 05),
                            child: Text(
                              widget.Streetaddress,
                              style:  TextStyle(
                                    fontFamily: "Montserrat-Medium",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF4F4F4F),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF33907C),
                        elevation: 3, //elevation of button
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                      ), onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder:(context) => NewAddress()));
                    },
                      child: Text(
                        "Change",
                        style:  TextStyle(
                              fontFamily: "Montserrat-Medium",
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 225,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 35,left: 13),
                          child: Image.asset(
                              "assets/image/coca cola small.png"
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 40),
                                  child: Text(
                                    "Coca Cola",
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
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,top: 15),
                                  child: Text(
                                    "\$25",
                                    style:  TextStyle(
                                          fontFamily: "Montserrat-Bold",
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF33907C),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 7,top: 16),
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
                                  padding: const EdgeInsets.only(left: 04,top: 16),
                                  child: Text(
                                    "\50% off",
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
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: DropdownButton(
                                    value: dropdownvalue,
                                    dropdownColor: Colors.white,
                                    style:  TextStyle(
                                          fontFamily: "Montserrat-Medium",
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF4F4F4F),
                                    ),
                                    icon: Padding(
                                      padding: const EdgeInsets.only(left: 05),
                                      child: Image.asset(
                                        'assets/icon/dropdown.png',
                                        color: Color(0xFF4F4F4F),
                                      ),
                                    ),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(
                                          items,
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ]
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Divider(
                      color: Colors.black12,
                      thickness: 1,
                      indent: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 05),
                    child: TextButton(
                      child: Text(
                        "Remove",
                        style:  TextStyle(
                              fontFamily: "Montserrat-Medium",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4F4F4F),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child: Text(
                          "Price Details",
                          style:  TextStyle(
                                fontFamily: "Montserrat-SemiBold",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25,left: 20),
                        child: Text(
                          "Price ( 1 item)",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 190,top: 25),
                        child: Text(
                          "\$25",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),

                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 20),
                        child: Text(
                          "Delivery Fee",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 205,top: 15),
                        child: Text(
                          "Info",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000),

                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Divider(
                      color: Colors.black12,
                      thickness: 1,
                      indent: 10,
                      // endIndent: 10,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          "Total Amount",
                          style:  TextStyle(
                                fontFamily: "Montserrat-SemiBold",
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000),

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:193,top: 10),
                        child: Text(
                          "\$25",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Bold",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF000000),

                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ]
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
                    context) => PaymentOption()));
              },
              color: Color(0xFF33907C),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Text(
                  "Coninue to Payment",
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
