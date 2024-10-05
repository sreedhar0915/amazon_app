import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonname;
  const CustomButton({required this.buttonname, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            buttonname,
            style: TextStyle(
                color: ColorConstants.black, fontWeight: FontWeight.w500),
          ),
        )),
      ),
    );
  }
}
