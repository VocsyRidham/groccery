import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled_44/bottom.dart';
import 'package:untitled_44/loginpage.dart';

class introscreen extends StatefulWidget {
  const introscreen({Key? key}) : super(key: key);

  @override
  State<introscreen> createState() => _introscreenState();
}

class _introscreenState extends State<introscreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int activePage = 0;

  final List<Widget> _Pages = [
    page1(),
    page2(),
    page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Stack(
        children: [
          Container(
            color: Color(0xFF33907C),
            height: 400,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Color(0xFFFFFFFF),
            margin: EdgeInsets.only(top: 390),
            height: 454,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 100,left: 150),
              child: Row(
                children: [
                  for(int i = 0; i < _Pages.length; i++)
                    buildIndicator(activePage == i)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              width: 315,
              height: 450,
              child: PageView.builder(
                controller: _pageController,
                  onPageChanged: (int page){
                    setState(() {
                      activePage = page;
                    });
                  },
                  itemBuilder: (BuildContext context, int index){
                    return _Pages[index % _Pages.length];
                  },
                itemCount: 3,
              ),
            ),
          ),
          // SizedBox(
          //   height: 10.0,
          // ),
          Positioned(
            bottom: 20,
            left: 13,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.all(5),
                width: 330,
                child: ElevatedButton(
                  onPressed: () {
                    _pageController.nextPage(
                        duration: Duration(milliseconds: 10),
                        curve: Curves.easeIn,
                    );
                    if(activePage == 2){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BottomNavPage(),
                        ),
                      );
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          context) => loginpage()));
                    }
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                       activePage == 2 ? 'Finish':'Next'
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                    backgroundColor: Color(0xFF33907C)
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          SvgPicture.asset(
              "assets/icon/intro1.svg",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 50,
              width: 250,
              child: Text(
                "Empowering Artisans, Farmers & Micro Business",
                textAlign: TextAlign.center,
                style:  TextStyle(
                      fontFamily: "Montserrat-Medium",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF33907C)

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          SvgPicture.asset(
            "assets/icon/intro2.svg",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50,left: 20),
            child: Container(
              height: 50,
              width: 290,
              child: Text(
                "      Connecting NGOs, Social Enterprises with Communities",
                textAlign: TextAlign.left,
                style:  TextStyle(
                        fontFamily: "Montserrat-Medium",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF33907C)

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class page3 extends StatelessWidget {
  const page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          SvgPicture.asset(
            "assets/icon/intro3.svg",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 50,
              width: 250,
              child: Text(
                " Donate, Invest & Support infrastructure projects",
                textAlign: TextAlign.center,
                style:  TextStyle(
                        fontFamily: "Montserrat-Medium",
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF33907C)

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget buildIndicator(bool isSelected) {
  return Container(
    height: isSelected ? 12 : 12,
    width: isSelected ? 20 : 20,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: isSelected ? Color(0xFF33907C) : Color(0xFF979797),
    ),
  );
}
