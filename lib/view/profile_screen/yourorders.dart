import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class Yourorders extends StatelessWidget {
  const Yourorders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: Column(
        children: [
          _Title(),
          SizedBox(height: 10),
          _Textfieldrow(),
          Divider(
            color: ColorConstants.grey,
            thickness: 3,
          ),
          SizedBox(height: 5),
          Text("Past three months"),
          SizedBox(height: 5),
          Divider(
            color: ColorConstants.grey,
            thickness: 1,
          ),
          SizedBox(height: 30),
          Text(
              "Looks like you haven't placed an order in the last 3\n                                     months.")
        ],
      ),
    );
  }

  Padding _Title() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Text("Your Orders",
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

  Container _Textfieldrow() {
    return Container(
      height: 50,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: ColorConstants.white,
                  prefix: Icon(Icons.search),
                  iconColor: ColorConstants.black,
                  hintText: "Search all orders",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: ColorConstants.grey, width: 1)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          BorderSide(color: ColorConstants.blue, width: 1)),
                ),
              ),
            ),
            SizedBox(width: 5),
            InkWell(onTap: () {}, child: Text("filter")),
            SizedBox(width: 5),
            Icon(
              Icons.arrow_forward_ios,
              size: 10,
            ),
          ],
        ),
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
