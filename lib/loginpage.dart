import 'package:flutter/material.dart';
import 'package:untitled_44/phonenumber.dart';


class loginpage extends StatelessWidget {
  const loginpage({Key? key,required}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF33907C),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Column(
                  children: [
                     Text (
                       "Welcome to tradly",
                       style:  TextStyle(
                             fontFamily: "Montserrat-Medium",
                             fontSize: 24,
                             fontWeight: FontWeight.w500,
                             color: Color(0xFFFFFFFF),

                       ),
                     ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          child: Text(
                            'Login to your account',
                              style:  TextStyle(
                                      fontFamily: "Montserrat-Regular",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    color: Color(0xFFFFFFFF),

                              )
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (
                                context) => PhoneNumber()));
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
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
                      hintText: 'Email/Mobile Number',
                      hintStyle: TextStyle(
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
                      hintStyle: TextStyle(
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
                  height: 30,
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
                      height:50,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                      child: Text(
                        "Login",
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: (){},
                        child: Text(
                           "Forgot your password?",
                          style:  TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat-Regular',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700

                          ),
                        )
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Dont have an account?",
                      style:  TextStyle(
                            fontFamily: "Montserrat-Medium",
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF),

                      ),
                    ),
                    TextButton(
                      child: Text(
                        'Sign up',
                        style:  TextStyle(
                              fontFamily: "Montserrat-Medium",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFFFFF),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      },
                    )
                  ],
                )
              ],
            ),
          ]
        ),
      ),
    );
  }
}
