import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';


class Frozenveg extends StatefulWidget {
  const Frozenveg({Key? key}) : super(key: key);

  @override
  State<Frozenveg> createState() => _FrozenvegState();
}

class _FrozenvegState extends State<Frozenveg> {
  List img5=[
    "assets/image/Ice Cream.png",
    "assets/image/Manggo Ice.png",
    "assets/image/Strawberry Ice.png",
    "assets/image/Matcha.png",
    "assets/image/Grape Ice Cream.png",
    "assets/image/Frozen Bottle.png",
  ];
  List title5=[
    "Ice Cream",
    "Manggo Ice",
    "Strawberry Ice",
    "Matcha",
    "Grape Ice Cream",
    "Frozen Bottle",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Frozen veg',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              fontFamily: 'Montserrat-Bold',
              color: Colors.white,
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon:Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: Colors.white
              )
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Row(
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 05),
        child: GridView.builder(
            padding: EdgeInsets.only(top: 15,right: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              mainAxisSpacing: 9,
            ),
            itemCount: img5.length,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: EdgeInsets.only(left: 20),
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
                            img5[index]
                          // height: 130,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 05),
                            child: Text(
                              title5[index],
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
      )
    );
  }
}