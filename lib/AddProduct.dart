import 'package:flutter/material.dart';
import 'package:dotted_decoration/dotted_decoration.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F9FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        title:Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 30),
              child: Center(
                  child: Text(
                    "Add Product",
                    style: TextStyle(
                      fontFamily: "Montserrat-Bold",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),
                    )
                  )
              ),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
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
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 20),
                          child: Container(
                            height: 117,
                            width: 150,
                            decoration: DottedDecoration(
                                shape: Shape.box,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: IconButton(
                                    icon: Icon(Icons.add),
                                    iconSize: 50,
                                    onPressed: (){
                                      print("Add Me");
                                    },
                                    color: Colors.black12,
                                  ),
                                ),
                                Text(
                                  "Add Product",
                                  style: TextStyle(
                                    fontFamily: "Montserrat-SemiBold",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black12,
                                  )
                                ),
                                Text(
                                  "1600 x 1200 for hi res",
                                  style: TextStyle(
                                    fontFamily: "Montserrat-Medium",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black12,
                                  )
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 20),
                          child: Container(
                            height: 117,
                            width: 150,
                            decoration: DottedDecoration(
                                shape: Shape.box,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(),
                                  child: IconButton(
                                    icon: Icon(Icons.add),
                                    iconSize: 50,
                                    onPressed: (){
                                      print("Add Me");
                                    },
                                    color: Colors.black12,
                                  ),
                                ),
                                Text(
                                  "Add Product",
                                  style: TextStyle(
                                    fontFamily: "Montserrat-SemiBold",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black12,
                                  )
                                ),
                                Text(
                                  "1600 x 1200 for hi res",
                                  style: TextStyle(
                                    fontFamily: "Montserrat-Medium",
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black12,
                                  )
                                ),
                              ],
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
                            "Max. 4 photos per product",
                            style:  TextStyle(
                              fontFamily: "Montserrat-Regular",
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
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 520,
              width: 350,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Product Name',
                          labelStyle: TextStyle(
                              fontFamily: "Montserrat-Regular",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF4F4F4F)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Category Product',
                          labelStyle: TextStyle(
                              fontFamily: "Montserrat-Regular",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF4F4F4F)
                          )
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 10.0),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: 'Price',
                                prefixIcon: IconButton(
                                  icon: Image.asset("assets/icon/dollar.png",height: 20,),
                                  onPressed: () {},
                                ),
                                labelStyle: TextStyle(
                                    fontFamily: "Montserrat-Regular",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF4F4F4F)
                                )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                labelText: 'Offer Price',
                                prefixIcon: IconButton(
                                  icon: Image.asset("assets/icon/dollar.png",height: 20,),
                                  onPressed: () {},
                                ),
                                labelStyle: TextStyle(
                                    fontFamily: "Montserrat-Regular",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xFF4F4F4F)
                                )
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Location Details',
                          suffixIcon: IconButton(
                            icon: Image.asset("assets/icon/Pick Location.png",height: 20,),
                            onPressed: (){},
                          ),
                          labelStyle:TextStyle(
                              fontFamily: "Montserrat-Regular",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color:Color(0xFF4F4F4F)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Product Description',
                          labelStyle: TextStyle(
                              fontFamily: "Montserrat-Regular",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF4F4F4F)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Condition',
                          labelStyle: TextStyle(
                              fontFamily: "Montserrat-Regular",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF4F4F4F)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Price Type',
                          labelStyle: TextStyle(
                              fontFamily: "Montserrat-Regular",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF4F4F4F)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Additional Details',
                          labelStyle: TextStyle(
                              fontFamily: "Montserrat-Regular",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF4F4F4F)
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                  "Add Product",
                  style:TextStyle(
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
