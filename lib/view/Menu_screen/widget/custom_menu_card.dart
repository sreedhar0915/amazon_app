import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class CustomMenuCard extends StatelessWidget {
  String itemnames;
  String itemimages;
  CustomMenuCard(
      {required this.itemnames, required this.itemimages, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 430,
          width: 150,
          decoration: BoxDecoration(
              color: ColorConstants.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorConstants.appbar)),
          child: Column(
            children: [
              Center(child: Text(itemnames)),
              SizedBox(height: 10),
              Image.asset(
                height: 100,
                itemimages,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
