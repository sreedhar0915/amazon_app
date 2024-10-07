import 'package:amazon_app/view/profile_screen/yourorders.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class Buyagain extends StatefulWidget {
  const Buyagain({super.key});

  @override
  State<Buyagain> createState() => _BuyagainState();
}

class _BuyagainState extends State<Buyagain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: Column(
        children: [
          _title(),
          _textfield(),
          _Textparagraph(),
          _inkwellyourorders(context)
        ],
      ),
    );
  }

  Padding _inkwellyourorders(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
          setState(() {});
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Yourorders(),
              ));
        },
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: ColorConstants.grey),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text("Your Orders",
                style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300)),
          ),
        ),
      ),
    );
  }

  Padding _textfield() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorConstants.white,
          prefix: Icon(Icons.search),
          iconColor: ColorConstants.black,
          hintText: "Search past p[urchases]",
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorConstants.grey, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorConstants.blue, width: 1)),
        ),
      ),
    );
  }

  Padding _Textparagraph() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
              "There are no recommended items for you to buy\nagain at this time. check your orders for items\nyou previously purchased.",
              style: TextStyle(
                  color: ColorConstants.black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Padding _title() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Text("Buy Again",
              style: TextStyle(
                fontSize: 20,
                color: ColorConstants.black,
                fontWeight: FontWeight.bold,
              )),
          Spacer(),
        ],
      ),
    );
  }
}

AppBar Appbar() {
  return AppBar(
    backgroundColor: ColorConstants.appbar,
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
  );
}
