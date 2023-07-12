import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

class PetCare extends StatefulWidget {
  const PetCare({Key? key}) : super(key: key);

  @override
  State<PetCare> createState() => _PetCareState();
}

class _PetCareState extends State<PetCare> {
  List img7=[
    "assets/image/Pet Snack.png",
    "assets/image/Potion Pet.png",
  ];
  List title7=[
    "Pet Snack",
    "Poison Pet",
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
            'Pet Care',
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
                      side: const BorderSide(width: 2, color:Colors.white),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                    icon: const Icon(Icons.location_on_sharp,color: Colors.white,),
                    label: const Text(
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
                      side: const BorderSide(width: 2, color:Colors.white),
                      shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                    icon: const Icon(Icons.list,color: Colors.white,),
                    label: const Text(
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
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              mainAxisSpacing: 9,
            ),
            itemCount: img7.length,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width  ,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                            img7[index]
                          // height: 130,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10,top: 05),
                            child: Text(
                              title7[index],
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
                          const Padding(padding: EdgeInsets.only(left: 05)),
                          const Text(
                            "Tradly",
                            style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4F4F4F)
                            ),
                          ),
                          const Padding(
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
      // Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(top: 10),
      //       child: Row(
      //         children: [
      //           Padding(
      //             padding:EdgeInsets.only(left: 10),
      //             child: InkWell(
      //               child: Container(
      //                 height: 180,
      //                 width: 160,
      //                 decoration: BoxDecoration(
      //                   color: Colors.white,
      //                   borderRadius: BorderRadius.circular(10),
      //                 ),
      //                 child: Column(
      //                   children: [
      //                     Container(
      //                       child: Image.asset(
      //                         'assets/image/Pet Snack.png',
      //                         // height: 130,
      //                       ),
      //                     ),
      //                     Row(
      //                       children: [
      //                         Padding(
      //                           padding: const EdgeInsets.only(left: 10),
      //                           child: Text(
      //                             "Pet Snack",
      //                             style:  TextStyle(
      //                                 fontFamily: "Montserrat-Medium",
      //                                 fontSize: 14,
      //                                 fontWeight: FontWeight.w500,
      //                                 color: Color(0xFF4A4A4A)
      //                             ),
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                     Row(
      //                       children: [
      //                         Padding(
      //                           padding: const EdgeInsets.only(left: 10,top: 05),
      //                           child: Container(
      //                             child: SvgPicture.asset("assets/icon/tradly small.svg"),
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding: const EdgeInsets.only(left: 05),
      //                           child: Text(
      //                               "Tradly",
      //                               style:  TextStyle(
      //                                   fontFamily: "Montserrat-Medium",
      //                                   fontSize: 14,
      //                                   fontWeight: FontWeight.w500,
      //                                   color: Colors.black38
      //                               )
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding: EdgeInsets.only(left: 30),
      //                           child: Text(
      //                             "\$35",
      //                             style:  TextStyle(
      //                                 fontFamily: "Montserrat-Regular",
      //                                 fontSize: 10,
      //                                 fontWeight: FontWeight.w400,
      //                                 color: Colors.black,
      //                                 decoration: TextDecoration.lineThrough
      //                             ),
      //                           ),
      //                         ),
      //                         Padding(
      //                           padding: EdgeInsets.only(left: 10),
      //                           child: Text(
      //                             "\$25",
      //                             style:  TextStyle(
      //                               fontFamily: "Montserrat-SemiBold",
      //                               fontSize: 14,
      //                               fontWeight: FontWeight.w600,
      //                               color: Color(0xFF13B58C),
      //                             ),
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               onTap: () {
      //                 // Navigator.of(context).push(MaterialPageRoute(builder: (
      //                 //     context) => ProductDetail()));
      //               },
      //             ),
      //           ),
      //           Padding(
      //             padding: EdgeInsets.only(left: 10),
      //             child: Container(
      //               height: 180,
      //               width: 160,
      //               decoration: BoxDecoration(
      //                 color: Colors.white,
      //                 borderRadius: BorderRadius.circular(10),
      //               ),
      //               child: Column(
      //                 children: [
      //                   Container(
      //                     child: Image.asset(
      //                       'assets/image/Potion Pet.png',
      //                       // height: 130,
      //                     ),
      //                   ),
      //                   Row(
      //                     children: [
      //                       Padding(
      //                         padding: const EdgeInsets.only(left: 10,top: 05),
      //                         child: Text(
      //                           "Potion Pet",
      //                           style:  TextStyle(
      //                               fontFamily: "Montserrat-Medium",
      //                               fontSize: 14,
      //                               fontWeight: FontWeight.w500,
      //                               color: Color(0xFF4A4A4A)
      //                           ),
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                   Row(
      //                     children: [
      //                       Padding(
      //                         padding: const EdgeInsets.only(left: 10,top: 05),
      //                         child: Container(
      //                           child: SvgPicture.asset("assets/icon/tradly small.svg"),
      //                         ),
      //                       ),
      //                       Padding(padding: EdgeInsets.only(left: 05)),
      //                       Text(
      //                         "Tradly",
      //                         style:  TextStyle(
      //                             fontFamily: "Montserrat-Medium",
      //                             fontSize: 14,
      //                             fontWeight: FontWeight.w500,
      //                             color: Colors.black38
      //                         ),
      //                       ),
      //                       Padding(
      //                         padding: EdgeInsets.only(left: 45),
      //                         child: Text(
      //                           "\$25",
      //                           style:  TextStyle(
      //                             fontFamily: "Montserrat-SemiBold",
      //                             fontSize: 14,
      //                             fontWeight: FontWeight.w600,
      //                             color: Color(0xFF13B58C),
      //                           ),
      //                         ),
      //                       )
      //                     ],
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}