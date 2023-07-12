import 'package:flutter/material.dart';
import 'package:untitled_44/MyCart.dart';
import 'MyCart1.dart';

class NewAddress extends StatefulWidget {
  const NewAddress({Key? key}) : super(key: key);

  @override
  State<NewAddress> createState() => _NewAddressState();
}
class _NewAddressState extends State<NewAddress> {
  TextEditingController NameController = TextEditingController();
  TextEditingController ZipcodeController = TextEditingController();
  TextEditingController StreetaddressController = TextEditingController();
  FocusNode NameFocus = FocusNode();
  FocusNode ZipcodeFocus = FocusNode();
  FocusNode StreetaddressFocus = FocusNode();
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
                  padding: const EdgeInsets.only(bottom: 40,top: 10),
                  child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => MyCart()));
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
                        "Add a new address",
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child:Column(
        children: [
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(
                            Icons.my_location,
                          color: Color(0xFF4EA0FF),
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Text(
                          "Use current location",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF4EA0FF),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 20),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: TextFormField(
                            obscureText: false,
                            controller: NameController,
                            focusNode: NameFocus,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: "Name",
                              labelStyle:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF4F4F4F)
                              )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              labelText: "Phone",
                              labelStyle:  TextStyle(
                                   fontFamily: "Montserrat-Regular",
                                   fontWeight: FontWeight.w400,
                                   fontSize: 14,
                                   color: Color(0xFF4F4F4F)
                            )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            obscureText: false,
                            controller: StreetaddressController ,
                            focusNode: StreetaddressFocus ,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: "Street address",
                              labelStyle:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF4F4F4F)
                              )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "City",
                              labelStyle:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF4F4F4F)
                              )
                            ),
                          )
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                                labelText: "State",
                                labelStyle:  TextStyle(
                                        fontFamily: "Montserrat-Regular",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Color(0xFF4F4F4F)
                                )
                            ),
                          )
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            obscureText: false,
                            controller: ZipcodeController ,
                            focusNode: ZipcodeFocus ,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              labelText: "Zipcode",
                              labelStyle:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xFF4F4F4F)
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              )
            ],
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                    MyCart1(Name: NameController.text,Streetaddress: StreetaddressController.text,Zipcode: ZipcodeController.text),
                ));
              },
              color: Color(0xFF33907C),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Text(
                  "Save",
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
