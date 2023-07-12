import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF33907C),
      body: SafeArea(
        child: ListView(
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
                              Navigator.pop(context);
                            },
                            icon: Icon(
                                CupertinoIcons.arrow_left,
                                size: 24,
                                color: Colors.white
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Text (
                          "Welcome to tradly",
                          style:  TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat-Medium',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700

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
                            child: Text(
                                'Signup to your account',
                                style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Montserrat-Regular',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700
                                ),
                              ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      autofocus: false,
                      style:  TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                      ),
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        hintStyle:  TextStyle(
                                fontFamily: "Montserrat-Regular",
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.white
                        ),
                        contentPadding:
                        EdgeInsets.only(left: 14.0, bottom: 12.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius:  BorderRadius.all(Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      autofocus: false,
                      style:  TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                      ),
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        hintStyle:  TextStyle(
                                fontFamily: "Montserrat-Regular",
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.white
                        ),
                        contentPadding:
                        EdgeInsets.only(left: 14.0, bottom: 12.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius:  BorderRadius.all(Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                        autofocus: false,
                        style:  TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat-Regular',
                                fontSize: 18,
                                fontWeight: FontWeight.w700
                        ),
                        decoration: InputDecoration(
                          hintText: 'Email ID/Phone Number',
                          hintStyle:  TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.white
                          ),
                          contentPadding:
                          EdgeInsets.only(left: 14.0, bottom: 12.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(25.7),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:  BorderRadius.all(Radius.circular(50),
                            ),
                          ),
                        ),
                      ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      autofocus: false,
                      style:  TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                      ),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle:  TextStyle(
                                fontFamily: "Montserrat-Regular",
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.white
                        ),
                        contentPadding:
                        EdgeInsets.only(left: 14.0, bottom: 12.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius:  BorderRadius.all(Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      autofocus: false,
                      style:  TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat-Regular',
                              fontSize: 18,
                              fontWeight: FontWeight.w700
                      ),
                      decoration: InputDecoration(
                        hintText: 'Re-enter Password',
                        hintStyle:  TextStyle(
                                fontFamily: "Montserrat-Regular",
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Colors.white
                        ),
                        contentPadding:
                        EdgeInsets.only(left: 14.0, bottom: 12.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.7),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius:  BorderRadius.all(Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      padding: EdgeInsets.only(top: 3,left: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (
                          //     context) => loginpage()));
                          Navigator.pop(context);
                        },
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Text(
                          "Create",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                            color: Color(0xFF13B58C)
                          )
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
                      Text(
                        "Have an account ? ",
                          style:  TextStyle(
                                fontFamily: "Montserrat-Medium",
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.white

                          )
                      ),
                      TextButton(
                        child: Text(
                          'Sign in',
                            style:  TextStyle(
                                  fontFamily: "Montserrat-Medium",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white

                            )
                        ),
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (
                          //     context) => PhoneNumber()));
                          Navigator.pushNamed(context, '/fourth');
                        },
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ]
        ),
      )
    );
  }
}
