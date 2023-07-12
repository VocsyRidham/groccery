import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:order_tracker/order_tracker.dart';

class orderdetails extends StatefulWidget {
  const orderdetails({Key? key}) : super(key: key);

  @override
  State<orderdetails> createState() => _orderdetailsState();
}

class _orderdetailsState extends State<orderdetails> {
  List<TextDto> orderList = [
    TextDto("Order#123455 from Fashion Point", "Fri, 25th Mar '22 - 10:47pm",),
  ];

  List<TextDto> shippedList = [
    TextDto("Payment Confirmed Status", "Tue, 29th Mar '22 - 5:04pm"),
  ];

  List<TextDto> outOfDeliveryList = [
    TextDto("Processed Status", "Thu, 31th Mar '22 - 2:27pm"),
  ];

  List<TextDto> deliveredList = [
    TextDto("Delivered Status", "Thu, 31th Mar '22 - 3:58pm"),
  ];

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
        title:
            Text(
              'Order Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat-Bold',
                color: Color(0xFFFFFFFF),
              ),
            ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: (){},
            )
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,right: 10),
              child: SvgPicture.asset(
                "assets/icon/Done.svg"
              ),
            ),
             Text(
                "Thanks for Order",
                style:  TextStyle(
                      fontFamily: "Montserrat-Bold",
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF4F4F4F),

                ),
             ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 170,
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
                                          color:Color(0xFF4F4F4F),
                                            decoration: TextDecoration.lineThrough

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 2,top: 16),
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
                ],
              )
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 360,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20),
                        child: Text(
                          'Track Order',
                          style:  TextStyle(
                                fontFamily: "Montserrat-SemiBold",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF212121),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,bottom: 5),
                        child: Text(
                          'Order ID - 123455',
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF606A7B),

                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 3,
                          width: 70,
                          color: Color(0xFF33907C),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50,top: 20),
                    child: OrderTracker(
                      status: Status.shipped,
                      activeColor: Color(0xFF33907C),
                      inActiveColor: Colors.grey[300],
                      orderTitleAndDateList: orderList,
                      shippedTitleAndDateList: shippedList,
                      outOfDeliveryTitleAndDateList: outOfDeliveryList,
                      deliveredTitleAndDateList: deliveredList,
                    ),
                  ),
                ],
              )
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20),
                        child: Text(
                          'Delivery Address',
                          style:  TextStyle(
                                fontFamily: "Montserrat-SemiBold",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF212121),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 1.0,
                      width: 360,
                      color: Colors.black12,
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20),
                        child: Text(
                          'Tradly team',
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:Color(0xFF212121),

                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20),
                        child: Text(
                          'Flat Number 512, Eden Garden, Rewari',
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF606A7B),

                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20),
                        child: Text(
                          'Mobile:',
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color:  Color(0xFF606A7B),

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Text(
                          "9876543210",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color:  Color(0xFF333942),

                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                      'Back to Home',
                      style:  TextStyle(
                              color: Color(0xFF212121),
                              fontFamily: 'Montserrat-SemiBold',
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                      )
                  ),
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (
                    //     context) => Homepage()));
                  },
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}
