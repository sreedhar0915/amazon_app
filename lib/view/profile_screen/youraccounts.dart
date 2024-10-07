import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class Youraccounts extends StatelessWidget {
  const Youraccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _Ordersection(),
              SizedBox(height: 10),
              _Accountsettingsection(),
              SizedBox(height: 10),
              _Amazonpayserction(),
              SizedBox(height: 10),
              _Personalizationsection(),
              SizedBox(height: 10),
              _Manageyourdatasection(),
            ],
          ),
        ),
      ),
    );
  }

  Column _Manageyourdatasection() {
    return Column(
      children: [
        Row(
          children: [
            Text("Manage your data",
                style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 157,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: ColorConstants.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Request your data",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Manage apps and services with data",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Privacy Notice",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Column _Personalizationsection() {
    return Column(
      children: [
        Row(
          children: [
            Text("Personalization",
                style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 157,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: ColorConstants.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Wish list",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Profile",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Your recommendations",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Column _Amazonpayserction() {
    return Column(
      children: [
        Row(
          children: [
            Text("Amazon Pay",
                style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 340,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: ColorConstants.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Amazon Pay UPI",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Top-up your Amazon Pay wallet",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("View Amazon Pay balance statement",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Add Gift Card to your balance",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Manage payement options",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Amazon Pay Later",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Column _Accountsettingsection() {
    return Column(
      children: [
        Row(
          children: [
            Text("Account Settings",
                style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 556,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: ColorConstants.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Login & security",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Your Addresses",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Manage Your Amazon Family",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Content Library",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Devices",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Default Purchase Settings",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Manage Prime membership",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Memberships & Subscriptions",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Review Your Purchases",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Photo ID proofs",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Column _Ordersection() {
    return Column(
      children: [
        Row(
          children: [
            Text("Orders",
                style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: 157,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: ColorConstants.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Your Orders",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Subscribe & Save",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
              Divider(color: ColorConstants.grey),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text("Recalls and products Safety Alerts",
                          style: TextStyle(
                              fontSize: 15,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w100)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios, size: 15),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
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
