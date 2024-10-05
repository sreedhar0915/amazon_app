import 'package:amazon_app/main.dart';
import 'package:amazon_app/view/bottomnavibar/bottomnavibar.dart';
import 'package:amazon_app/view/signinscreen1/siginorcreate_ac.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class Switchaccounts extends StatefulWidget {
  const Switchaccounts({super.key});

  @override
  State<Switchaccounts> createState() => _SwitchaccountsState();
}

class _SwitchaccountsState extends State<Switchaccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: Column(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: ColorConstants.lightgrey,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                  child: Row(
                children: [
                  Text("Switch Accounts",
                      style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text("Manage",
                        style: TextStyle(
                          color: ColorConstants.blue,
                          fontSize: 18,
                        )),
                  ),
                ],
              )),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {});
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bottomnavibar(),
                  ));
            },
            child: Container(
              height: 100,
              width: double.infinity,
              color: ColorConstants.white,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: ColorConstants.grey,
                        child: Icon(
                          Icons.person_outline,
                          color: ColorConstants.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(email),
                      Spacer(),
                      Icon(Icons.check, color: Colors.green),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          _addaccountinkwell(context),
        ],
      ),
    );
  }

  Padding _addaccountinkwell(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              setState(() {});
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SiginorcreateAccount(),
                ));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorConstants.lightgrey,
                border: Border.all(color: ColorConstants.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text("Add Account",
                    style: TextStyle(
                      color: ColorConstants.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    )),
              ),
            ),
          ),
        );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConstants.Buttoncolor,
      actions: [
        InkWell(
          onTap: () {
            setState(() {});
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Bottomnavibar(),
                ));
          },
          child: Text(
            "CANCEL",
            style: TextStyle(
                color: ColorConstants.black, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
