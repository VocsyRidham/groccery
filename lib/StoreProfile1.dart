import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class StoreProfile1 extends StatefulWidget {
  const StoreProfile1({Key? key}) : super(key: key);

  @override
  State<StoreProfile1> createState() => _StoreProfile1State();
}

class _StoreProfile1State extends State<StoreProfile1> {
  List img1 = [
    "assets/image/Apple.png",
    "assets/image/Orange.png"
  ];
  List title1 =[
    "Apple",
    "Orange"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F9FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 20),
              child: TextFormField(
                style:  TextStyle(
                      fontFamily: "Montserrat-Medium",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                ),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: (){
                        Navigator.pop(context, true);
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white
                      )
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: OutlinedButton.icon(
                    onPressed: () {},

                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color:Colors.white),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    icon:  Icon(
                        CupertinoIcons.sort_down,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Sort",
                      style:  TextStyle(
                            fontFamily: "Montserrat-Medium",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: OutlinedButton.icon(
                    onPressed: () {},

                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color:Colors.white),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    icon: Icon(Icons.location_on_sharp,color: Colors.white,),
                    label: Text(
                      "Location",
                      style:  TextStyle(
                            fontFamily: "Montserrat-Medium",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,

                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: OutlinedButton.icon(
                    onPressed: () {},

                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 2, color:Colors.white),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    icon: Icon(Icons.list,color: Colors.white,),
                    label: Text(
                      "Category",
                      style:  TextStyle(
                            fontFamily: "Montserrat-Medium",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
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
      body: Padding(
        padding: const EdgeInsets.only(right: 05),
        child: GridView.builder(
            padding: EdgeInsets.only(top: 20,right: 10),
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
                                color: Color(0xFF4A4A4A)
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
    );
  }
}
