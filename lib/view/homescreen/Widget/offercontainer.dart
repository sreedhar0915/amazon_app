import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class Offercontainer extends StatelessWidget {
  final String offername;
  final offerimage;
  const Offercontainer(
      {required this.offername, required this.offerimage, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: ColorConstants.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(offername,
                  style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(height: 5),
              Divider(color: ColorConstants.appbar),
              Image.asset(
                  height: 150,
                  width: double.infinity,
                  offerimage,
                  fit: BoxFit.cover),
              Divider(color: ColorConstants.appbar),
            ],
          ),
        ),
      ),
    );
  }
}
