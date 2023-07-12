import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled_44/MyCart.dart';
import 'package:untitled_44/Wishlist.dart';

class Browse extends StatefulWidget {
  const Browse({Key? key}) : super(key: key);

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  List img1 = [
    "assets/image/Apple.png",
    "assets/image/Orange.png",
    "assets/image/Moisturizer.png",
    "assets/image/Brocolli.png",
    "assets/image/Egg.png",
    "assets/image/Fruit.png"
  ];
  List title1 =[
    "Apple",
    "Orange",
    "Moisturizer",
    "Brocolli",
    "Egg",
    "Fruit"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        centerTitle: true,
        title: Row(
          children: [
            Text(
              'Browse',
              style:  TextStyle(
                    fontFamily: "Montserrat-Bold",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.heart_fill),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Wishlist()));
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyCart()));
            },
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'search Product',
                        prefixIcon: Icon(Icons.search),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(50),
                          ),
                        ),
                        contentPadding:
                        EdgeInsets.only(left: 14.0),
                        filled: true,
                        fillColor: Colors.white
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
                        icon: Icon(
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
                                color: Colors.black38
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
