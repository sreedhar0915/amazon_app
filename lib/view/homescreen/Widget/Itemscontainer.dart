import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class Itemscontainer extends StatelessWidget {
  final itemimages;
  final itemnames;
  const Itemscontainer(
      {required this.itemimages, required this.itemnames, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 150,
        width: 120,
        color: ColorConstants.Buttoncolor,
        child: Column(
          children: [
            Image.asset(
              height: 80,
              itemimages,
              fit: BoxFit.cover,
            ),
            Text(
              itemnames,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.black),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
