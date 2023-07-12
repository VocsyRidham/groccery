import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled_44/StoreProfile1.dart';

class StoreProfile extends StatefulWidget {
  const StoreProfile({Key? key}) : super(key: key);

  @override
  State<StoreProfile> createState() => _StoreProfileState();
}

class _StoreProfileState extends State<StoreProfile> {
  List img1 = [
    "assets/image/Apple.png",
    "assets/image/Orange.png",
    "assets/image/Moisturizer.png",
    "assets/image/Brocolli.png",
  ];
  List title1 =[
    "Apple",
    "Orange",
    "Moisturizer",
    "Brocolli",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        title:Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 30),
              child: Center(
                  child: Text(
                    "Tradly Store",
                    style: TextStyle(
                          fontFamily: "Montserrat-Bold",
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFF),
                    ),
                  )
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: IconButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (
                      context) => StoreProfile1()));
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )
            ),
          )
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(45),
            child: Container()
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFF33907C),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 04),
                      child: Container(
                        height: 240,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFFFFFFF)
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 40,top: 20),
                                  child: Container(
                                    child: SvgPicture.asset(
                                      "assets/icon/tadlystoreprofile.svg"
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 30,left: 10),
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
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 05,right: 08),
                                          child: Text(
                                            "tradly.app",
                                            style:  TextStyle(
                                                  fontFamily: "Montserrat-Medium",
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                              color: Color(0xFF4F4F4F)
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 75,top: 20),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF33907C),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 30),
                                    ), onPressed: () {},
                                    child: Text(
                                      "Follow",
                                      style:  TextStyle(
                                            fontFamily: "Montserrat-Medium",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,

                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                height: 64,
                                width: 260,
                                child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In augue nunc vel rhoncus, sed. Neque hendrerit risus ut metus ultrices ac. Dui morbi eu amet id mauris. Eget at ut.",
                                  style:  TextStyle(
                                        fontFamily: "Montserrat-Medium",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                    color: Color(0xFF4F4F4F)
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Container(
                                    height: 30,
                                    width: 123,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFFD8D8D8),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Groceries",
                                            style:  TextStyle(
                                                  fontFamily: "Montserrat-Regular",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xFF4F4F4F)
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: IconButton(
                                              onPressed: (){},
                                              icon: Icon(
                                                  Icons.close,
                                                size: 16,
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 30,
                                    width: 134,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFFD8D8D8),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Vegetables",
                                            style:  TextStyle(
                                                    fontFamily: "Montserrat-Regular",
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF4F4F4F)
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(),
                                          child: IconButton(
                                              onPressed: (){},
                                              icon: Icon(
                                                Icons.close,
                                                size: 16,
                                              )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 88,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 60),
                        child: Text(
                          "Total Followers",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                            color: Color(0xFF4F4F4F)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 60),
                        child: Text(
                          "Total Products",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                            color: Color(0xFF4F4F4F)
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 100),
                        child: Text(
                          "\0",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                            color: Color(0xFF4F4F4F)
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 150),
                        child: Text(
                          "\0",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                            color: Color(0xFF4F4F4F)
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: InkWell(
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF13B58C),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "All Product",
                            style:  TextStyle(
                                    fontFamily: "Montserrat-Medium",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color:Color(0xFFFFFFFF)

                            ),
                          ),
                        ),
                      ),
                      onTap: (){},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10),
                    child: InkWell(
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xFF4F4F4F)
                          )
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Fruit",
                            style:  TextStyle(
                                    fontFamily: "Montserrat-Medium",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF4F4F4F),

                            ),
                          ),
                        ),
                      ),
                      onTap: (){},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10),
                    child: InkWell(
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Color(0xFF4F4F4F)
                          )
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Vegetables",
                            style:  TextStyle(
                                    fontFamily: "Montserrat-Medium",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF4F4F4F)

                            ),
                          ),
                        ),
                      ),
                      onTap: (){},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 10),
                    child: InkWell(
                      child: Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Color(0xFF4F4F4F)
                          )
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Homecare",
                            style:  TextStyle(
                                    fontFamily: "Montserrat-Medium",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF4F4F4F)

                            ),
                          ),
                        ),
                      ),
                      onTap: (){},
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 03,
            ),
            Container(
              height: 240,
              child: Padding(
                padding: const EdgeInsets.only(right: 05),
                child: GridView.builder(
                  physics: ScrollPhysics(),
                    padding: EdgeInsets.only(top: 10,right: 10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: img1.length,
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset(
                                    img1[index]
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 05),
                                    child: Text(
                                      title1[index],
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
                                    padding: EdgeInsets.only(left: 45),
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
            )
          ],
        ),
      )
    );
  }
}
