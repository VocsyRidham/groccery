import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:flutter/cupertino.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF33907C),
      body: ListView(
         children: [
           Container(
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
                                 "Phone Verification",
                                 style:  TextStyle(
                                       color: Color(0xFFFFFFFF),
                                       fontFamily: 'Montserrat-Medium',
                                       fontSize: 24,
                                       fontWeight: FontWeight.w500

                                 ),
                               ),
                               SizedBox(
                                 height: 20,
                               ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text(
                                     "Enter your OTP code here",
                                     textAlign: TextAlign.center,
                                     style:  TextStyle(
                                           color: Colors.white,
                                           fontFamily: 'Montserrat-Regular',
                                           fontSize: 16,
                                           fontWeight: FontWeight.w500
                                     ),
                                   ),
                                 ],
                               ),
                               SizedBox(
                                 height: 30,
                               ),
                               VerificationCode(
                                  textStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                                   keyboardType: TextInputType.number,
                                   underlineColor: Colors.white,
                                   underlineUnfocusedColor: Colors.white,
                                   underlineWidth: 1,
                                   length: 6,
                                   // cursorColor: Colors.white,
                                   onCompleted: (String value) {},
                                   onEditing: (bool value) {},
                               ),
                               SizedBox(
                                 height: 20,
                               ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   TextButton(
                                     child: Text(
                                       'Didn’t you received any code? ',
                                       style:  TextStyle(
                                             color: Colors.white,
                                             fontFamily: 'Montserrat-Regular',
                                             fontSize: 18,
                                             fontWeight: FontWeight.w500
                                       ),
                                     ),
                                     onPressed: () {},
                                   )
                                 ],
                               ),
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   TextButton(
                                     child: Text(
                                       'Resent new code',
                                       style:  TextStyle(
                                             color: Colors.white,
                                             fontFamily: 'Montserrat-Regular',
                                             fontSize: 18,
                                             fontWeight: FontWeight.w500

                                       ),
                                     ),
                                     onPressed: () {},
                                   )
                                 ],
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(top: 20),
                                 child: Container(
                                   padding: EdgeInsets.symmetric(horizontal: 30),
                                   height: 45,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(40),
                                   ),
                                   child: MaterialButton(
                                     minWidth: double.infinity,
                                     height:50,
                                     onPressed: () {
                                       // Navigator.pushNamed(context, '/thired');
                                       Navigator.pop(context);
                                     },
                                     color: Colors.white,
                                     shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(40)
                                     ),
                                     child: Text(
                                       "Verify",
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
                             ],
                          ),
                       ],
                    ),
                 ],
              ),
           ),
         ],
      ),
    );
  }
}
