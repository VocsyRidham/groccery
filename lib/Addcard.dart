import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled_44/Paymentoption.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:untitled_44/Paymentoption1.dart';
import 'package:untitled_44/orderdetails.dart';

class Addcard extends StatefulWidget {
  const Addcard({Key? key}) : super(key: key);

  @override
  State<Addcard> createState() => _AddcardState();
}

class _AddcardState extends State<Addcard> {
  String cardNumber = '';
  String expiryDate= '';
  String cardHolderName = '';
  String cvvCode= '';
  bool isCvvFocused = false;
  bool useBackgroundImage = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                  padding: const EdgeInsets.only(bottom: 30,top: 10),
                  child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) => PaymentOption()));
                      },
                      icon:Icon(
                          Icons.arrow_back_sharp,
                          size: 25,
                          color: Colors.white
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80,bottom: 20),
                  child: Center(
                      child: Text(
                        "Add Card",
                        style:TextStyle(
                              fontFamily: "Montserrat-Bold",
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFFFF),
                        )
                      )
                  ),
                ),
              ],
            )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              obscureCardNumber: true,
              obscureCardCvv: true,
              cardBgColor: Colors.black,
            ),
            Container(
              height: 300,
              color: Color(0xFFFFFFFF),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CreditCardForm(
                        cardNumber: cardNumber,
                        expiryDate: expiryDate,
                        cardHolderName: cardHolderName,
                        cvvCode: cvvCode,
                        onCreditCardModelChange: onCreditCardModelChange,
                        themeColor: Colors.blue,
                        formKey: formKey,
                        cardNumberDecoration: InputDecoration(
                            labelText: 'Card Number',
                            hintText: 'xxxx xxxx xxxx xxxx',
                          labelStyle: TextStyle(
                              fontFamily: "Montserrat-Medium",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            color: Color(0xFF3A2C3C)
                          )
                        ),
                        cardHolderDecoration: InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(
                              fontFamily: "Montserrat-Medium",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            color: Color(0xFF3A2C3C)
                          )
                        ),
                        expiryDateDecoration: InputDecoration(
                            labelText: 'Expired Date',
                            hintText: 'xx/xx',
                          labelStyle: TextStyle(
                              fontFamily: "Montserrat-Medium",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            color: Color(0xFF3A2C3C)
                          )
                        ),
                        cvvCodeDecoration: InputDecoration(
                            labelText: 'CVC',
                            hintText: 'xxxx',
                          labelStyle: TextStyle(
                              fontFamily: "Montserrat-Medium",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            color: Color(0xFF33907C)
                          )
                        ),
                      ),
                    ],
                  ),
                )
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => orderdetails(),
                  ),
                );
                Navigator.of(context).push(MaterialPageRoute(builder: (
                    context) => PaymentOption1()));
              },
              color: Color(0xFF33907C),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Text(
                  "Add Credit Card",
                  style: TextStyle(
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
  void onCreditCardModelChange(CreditCardModel creditCardModel){
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}

