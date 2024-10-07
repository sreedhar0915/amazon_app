import 'package:amazon_app/view/homescreen/homescreen.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class Profilecontainers extends StatefulWidget {
  final String title;
  final String subtitle;
  final String switchname;
  const Profilecontainers(
      {required this.title,
      required this.subtitle,
      required this.switchname,
      super.key});

  @override
  State<Profilecontainers> createState() => _ProfilecontainersState();
}

class _ProfilecontainersState extends State<Profilecontainers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              widget.title,
              style: TextStyle(
                  color: ColorConstants.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(widget.subtitle),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                setState(() {});
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homescreen(),
                    ));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text(widget.switchname)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Divider(
            color: ColorConstants.grey,
            thickness: 5,
          ),
        ],
      ),
    );
  }
}
