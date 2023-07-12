import 'package:flutter/material.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:untitled_44/Addcard.dart';
import 'package:untitled_44/NewAddress.dart';

class PaymentOption1 extends StatefulWidget {
  const PaymentOption1({Key? key}) : super(key: key);

  @override
  State<PaymentOption1> createState() => _PaymentOptionState();
}
class _PaymentOptionState extends State<PaymentOption1> {
  List item =[1,2,3];
  int currentIndex = 0;
  int value = 0;
  final paymentLabels =[
    'Debit / Credit Card',
    'Netbanking',
    'Cash on Delivery',
    'Wallet'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(45),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 38,top: 05),
                  child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => Addcard()));
                      },
                      icon:Icon(
                          Icons.arrow_back_sharp,
                          size: 25,
                          color: Colors.white
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,bottom: 25),
                  child: Center(
                      child: Text(
                        "Payment Option",
                        style:  TextStyle(
                              fontFamily: "Montserrat-Bold",
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFFFF),
                        ),
                      )
                  ),
                ),
              ],
            )
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 1,
            ),
            Container(
              height: 240,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFFFFFFF),
              child: Column(
                children: [
                  CarouselSlider(
                    items: [
                      for(int i=0; i < item.length; i++)
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
                          decoration: DottedDecoration(
                              shape: Shape.box,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: IconButton(
                                  icon: Icon(Icons.add),
                                  iconSize: 50,
                                  onPressed: (){
                                    Navigator.of(context).push(MaterialPageRoute(builder:(context) => Addcard()));
                                  },
                                  color: Colors.black12,
                                ),
                              ),
                              Text(
                                "Add Payment Method",
                                style:  TextStyle(
                                      fontFamily: "Montserrat-SemiBold",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black12,
                                ),
                              ),
                            ],
                          ),
                        )
                    ],
                    options: CarouselOptions(
                      onPageChanged: (int, reason) {
                        setState(() {
                          currentIndex = int;
                        });
                      },
                      autoPlay: false,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for(int i = 0; i < item.length; i++)
                        buildIndicator(currentIndex == i)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              height: 173,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: ListView.separated(
                physics: ScrollPhysics(),
                itemCount: paymentLabels.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 30,
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Radio(
                          activeColor: Color(0xFF13B58C),
                          value: index,
                          groupValue: value,
                          onChanged: (i) => setState(() => value = index),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 15,),
                        child: Text(
                          paymentLabels[index],
                          style: TextStyle(
                              fontFamily: "Montserrat-SemiBold",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4F4F4F)
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
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
                              "Tradly Team",
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
                              "75119",
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
                              "Kualalumpur, Malaysia",
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
                    padding: const EdgeInsets.only(left: 80),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF33907C),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 40),
                      ), onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder:(context) => NewAddress()));
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
              height: 10,
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
            ),
            SizedBox(
              height: 30,
            )
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
                Navigator.pop(context);
              },
              color: Color(0xFF33907C),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Text(
                  "Checkout",
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

Widget buildIndicator(bool isSelected) {
  return Container(
    height: isSelected ? 8 : 8,
    width: isSelected ? 30 : 30,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isSelected ? Color(0xFF13B58C) : Color(0xFFECEBED),
    ),
  );
}
