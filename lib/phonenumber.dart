import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  String dropdownvalue = '+91';
  var items = [
    '+91',
    '+1',
    '+49',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF33907C),
      body: ListView(
        children: [
          Container(
              // height: MediaQuery.of(context).size.height,
              // width: double.infinity,
            child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                  Column(
                     children: [
                       Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                  onPressed: (){
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (
                                    //     context) => SignupPage()));
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                      CupertinoIcons.arrow_left,
                                      size: 24,
                                      color: Colors.white
                                  )
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                             Text (
                              "Verify your phone number",
                              style:  TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat-Medium',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700

                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "We have sent you an SMS with a code to "
                                      "enter number",
                                  textAlign: TextAlign.center,
                                  style:  TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Montserrat-Regular',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700

                                  ),
                                ),
                              ],
                            )
                          ]
                       )
                     ]
                  ),
                 SizedBox(
                   height: 30,
                 ),
                 Container(
                   height: 40,
                   width: 300,
                   child: TextField(
                     keyboardType: TextInputType.phone,
                     style:  TextStyle(
                           fontFamily: "Montserrat-Bold",
                           fontSize: 18,
                           fontWeight: FontWeight.w700,
                           color: Colors.white,

                     ),
                     cursorColor: Colors.white,
                     decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(30.0)),
                         borderSide: BorderSide(color: Colors.white),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(30.0)),
                         borderSide: BorderSide(color: Colors.white),
                       ),
                       prefixIcon: Padding(
                         padding: const EdgeInsets.only(left: 10),
                         child: DropdownButton(
                           value: dropdownvalue,
                           dropdownColor: Color(0xFF13B58C),
                           style:  TextStyle(
                                 fontFamily: "Montserrat-Bold",
                                 fontSize: 18,
                                 fontWeight: FontWeight.w700,
                                 color: Colors.white,

                           ),
                           icon: Image.asset('assets/icon/dropdown.png', color: Colors.white,height: 20),
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
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 20,
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: TextButton(
                           onPressed: (){},
                           child: Text(
                             "Or login with Social network",
                             style:  TextStyle(
                                     color: Colors.white,
                                     fontFamily: 'Montserrat-Regular',
                                     fontSize: 18,
                                     fontWeight: FontWeight.w700

                             ),
                           )
                       ),
                     ),
                   ],
                 ),
                 Padding(
                   padding: EdgeInsets.symmetric(horizontal: 30),
                   child: Container(
                     height: 50,
                     padding: EdgeInsets.only(top: 3,left: 3),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(40),
                     ),
                     child: MaterialButton(
                       minWidth: double.infinity,
                       height:60,
                       onPressed: () {
                         Navigator.pushNamed(context, '/fifth');
                       },
                       color: Colors.white,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(40)
                       ),
                       child: Text(
                         "Next",
                         style:  TextStyle(
                               fontFamily: "Montserrat-Medium",
                               fontSize: 16,
                               fontWeight: FontWeight.w500,
                               color: Color(0xFF13B58C),

                         ),
                       ),
                     ),
                   ),
                 ),
               ]
            )
          )
        ]
      )
    );
  }
}

