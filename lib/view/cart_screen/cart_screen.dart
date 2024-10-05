import 'package:amazon_app/view/homescreen/homescreen.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.Buttoncolor,
        title: Container(
          height: 35,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorConstants.white,
                    prefix: Icon(Icons.search),
                    iconColor: ColorConstants.black,
                    hintText: "Search Amazon.in",
                    suffix: Icon(Icons.center_focus_weak),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: ColorConstants.grey, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: ColorConstants.grey, width: 1)),
                  ),
                ),
              ),
              SizedBox(width: 5),
              IconButton(onPressed: () {}, icon: Icon(Icons.qr_code_scanner)),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorConstants.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage("assets/images/cart.png"),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text(
                        "Your  Amazon  Cart  is\nempty",
                        style: TextStyle(
                            color: ColorConstants.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 25),
                      Text(
                        "Pick up where you left off",
                        style: TextStyle(
                            color: ColorConstants.appbar, fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 25,
            color: ColorConstants.lightgrey,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
                child: SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homescreen(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.Buttoncolor,
                  ),
                  child: Center(
                      child: Text(
                    "Continue shopping",
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ))),
            )),
          )
        ],
      ),
    );
  }
}
