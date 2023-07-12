import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'Browse.dart';
import 'OrderHistory.dart';
import 'Profile.dart';
import 'homepage.dart';
import 'mystore.dart';

class BottomNavPage extends StatefulWidget {
  BottomNavPage({Key? key, this.index}) : super(key: key);

  final Int? index;

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int selectedIndex = 0;
  List<Widget> widgets = [
     Homepage(),
     Browse(),
     CreateStore(),
     OrderHistory(),
     Profile(),
  ];

  ///=============================== Exit popup design==============================================

  Future<bool> showExitPopup(context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Do you want to exit?", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('yes selected');
                            exit(0);
                          },
                          child: Text("Yes", style: TextStyle(color: Colors.white, fontSize: 18)),
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF33907C)),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              print('no selected');
                             Navigator.pop(context);
                            },
                            child: Text("No", style: TextStyle(color: Colors.black, fontSize: 18)),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: widgets,
        ),
        bottomNavigationBar: Container(
          height: 60,
          color: Colors.transparent,
          child:BottomNavigationBar(
            elevation: 0,
            backgroundColor: Color(0xFFFFFFFF),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFF33907C),
            unselectedItemColor: Colors.grey,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/icon/home.png', color: Color(0xFF33907C),height: 20),
                  icon: Image.asset('assets/icon/home.png', color: Colors.grey,height: 20),
                  label: 'Home'
              ),
              BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/icon/search.png', color: Color(0xFF33907C),height: 20),
                  icon: Image.asset('assets/icon/search.png', color: Colors.grey,height: 20),
                  label: 'Browse'
              ),
              BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/icon/Store.png', color: Color(0xFF33907C),height: 20),
                  icon: Image.asset('assets/icon/Store.png', color: Colors.grey,height: 20),
                  label: 'Store'
              ),
              BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/icon/order.png', color: Color(0xFF33907C),height: 20),
                  icon: Image.asset('assets/icon/order.png', color: Colors.grey,height: 20),
                  label: 'OrderHistory'
              ),
              BottomNavigationBarItem(
                  activeIcon: Image.asset('assets/icon/profile.png', color: Color(0xFF33907C),height: 20),
                  icon: Image.asset('assets/icon/profile.png', color: Colors.grey,height: 20),
                  label: 'Profile',
              ),
            ],
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}