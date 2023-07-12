import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled_44/CreateStore.dart';
import 'package:untitled_44/MyCart.dart';
import 'package:untitled_44/MyStore1.dart';
import 'package:untitled_44/Wishlist.dart';

class CreateStore extends StatelessWidget {
  const CreateStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F9FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF33907C),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'My Store',
                style:  TextStyle(
                      fontFamily: "Montserrat-Bold",
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFFFFFF),

                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: IconButton(
              icon: Icon((Icons.favorite)),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (
                    context) => Wishlist()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: IconButton(
              icon: Icon((Icons.shopping_cart)),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (
                    context) => MyCart()));
              },
            )
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Container(),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: SvgPicture.asset(
                'assets/icon/createstore.svg'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'You Dont Have a Store',
              style:  TextStyle(
                    fontFamily: "Montserrat-SemiBold",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  padding: EdgeInsets.only(top: 3,left: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height:50,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => MyStore1(),
                        ),
                      );
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          context) => createstore()));
                    },
                    color: Color(0xFF33907C),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                    ),
                    child: Text(
                      "Create Store",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'Montserrat-Medium',
                          fontSize: 16,
                          fontWeight: FontWeight.w500
                      ),
                    ),
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
