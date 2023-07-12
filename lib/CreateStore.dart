import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class createstore extends StatefulWidget {
  const createstore({Key? key}) : super(key: key);

  @override
  State<createstore> createState() => _createstoreState();
}

class _createstoreState extends State<createstore> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        title:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60,top: 30),
                  child: Center(
                      child: Text(
                        "My Store",
                        textAlign: TextAlign.center,
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
            ),
            leading: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SvgPicture.asset(
                    'assets/icon/createstore.svg'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 30,
                width: 210,
                child: Text(
                  "This information is used to set up your shop",
                  textAlign: TextAlign.center,
                  style:  TextStyle(
                        fontFamily: "Montserrat-Medium",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4F4F4F),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20  ,
            ),
            Container(
              height: 710,
              width: 350,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Store Name',
                          labelStyle:  TextStyle(
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
                          labelText: 'Store Web Address',
                          labelStyle:  TextStyle(
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
                          labelText: 'Store Description',
                          labelStyle:  TextStyle(
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
                          labelText: 'Store Type',
                          labelStyle:  TextStyle(
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
                          labelText: 'Address',
                          labelStyle:  TextStyle(
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
                          labelText: 'City',
                          labelStyle:  TextStyle(
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
                          labelText: 'State',
                          labelStyle:  TextStyle(
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
                          labelText: 'Country',
                          labelStyle:  TextStyle(
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
                          labelText: 'Courier Name',
                          labelStyle:  TextStyle(
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
                          labelText: 'Courier Name',
                          labelStyle:  TextStyle(
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
                          labelText: 'Tagline',
                          labelStyle:  TextStyle(
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
        color: Color(0xFFFFFFFF),
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
                  "Create",
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
