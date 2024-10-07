import 'package:amazon_app/main.dart';
import 'package:amazon_app/view/DummyDB.dart';
import 'package:amazon_app/view/profile_screen/Buyagain.dart';
import 'package:amazon_app/view/profile_screen/yourorders.dart';
import 'package:amazon_app/view/profile_screen/widget/custom_button.dart';
import 'package:amazon_app/view/profile_screen/widget/profilecontainers.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Hisection(),
            SizedBox(height: 20),
            Inkwell4section(),
            Orderandbuysection(),
            Youraccountsection(),
            Rewardsection(),
            Helpsection(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Padding Inkwell4section() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
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
                    width: 200,
                    decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      border: Border.all(color: ColorConstants.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text("Your Orders",
                            style: TextStyle(color: ColorConstants.black)))),
              ),
              InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Buyagain(),
                      ));
                },
                child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      border: Border.all(color: ColorConstants.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text("Buy Again",
                            style: TextStyle(color: ColorConstants.black)))),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      border: Border.all(color: ColorConstants.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text("Your Account",
                            style: TextStyle(color: ColorConstants.black)))),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      border: Border.all(color: ColorConstants.grey),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text("Your Lists",
                            style: TextStyle(color: ColorConstants.black)))),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding Hisection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
              radius: 10,
              backgroundColor: ColorConstants.grey,
              child: Center(
                child: Icon(
                  Icons.person_outlined,
                  color: ColorConstants.white,
                ),
              )),
          SizedBox(width: 10),
          Text("Hello, $email",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
          Spacer(),
          Text("🇮🇳 EN",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
        ],
      ),
    );
  }

  SizedBox Orderandbuysection() {
    return SizedBox(
      height: 400,
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => Profilecontainers(
                title: DummyDb.Profilecontainers[index]["title"],
                subtitle: DummyDb.Profilecontainers[index]["subtitle"],
                switchname: DummyDb.Profilecontainers[index]["switchname"],
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 0,
              ),
          itemCount: 3),
    );
  }

  Column Helpsection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text("Need more help?",
                  style: TextStyle(
                      color: ColorConstants.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Spacer(),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              CustomButton(buttonname: "Customer service help"),
              Spacer(),
            ],
          ),
        ),
        SizedBox(height: 10),
        Divider(
          color: ColorConstants.grey,
          thickness: 3,
        ),
      ],
    );
  }

  Container Youraccountsection() {
    return Container(
      height: 200,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text("Your Account",
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Spacer(),
                Text("See all",
                    style: TextStyle(
                      color: ColorConstants.appbar,
                      fontSize: 20,
                    )),
                SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomButton(
                        buttonname: DummyDb.Buttonname[index]["text"],
                      ),
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemCount: 6),
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

  Container Rewardsection() {
    return Container(
      height: 200,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Text("Your Rewards",
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Spacer(),
                Text("See all",
                    style: TextStyle(
                      color: ColorConstants.appbar,
                      fontSize: 20,
                    )),
                SizedBox(height: 10),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: ColorConstants.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 150,
                        child: Center(
                            child: Column(
                          children: [
                            Text("Cashback earned",
                                style: TextStyle(color: ColorConstants.grey)),
                            SizedBox(height: 5),
                            Text("0",
                                style: TextStyle(
                                    color: ColorConstants.black, fontSize: 20))
                          ],
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 150,
                        child: Center(
                            child: Column(
                          children: [
                            Text("Collected offers",
                                style: TextStyle(color: ColorConstants.grey)),
                            SizedBox(height: 5),
                            Text("0",
                                style: TextStyle(
                                    color: ColorConstants.black, fontSize: 20))
                          ],
                        )),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 150,
                        child: Center(
                            child: Column(
                          children: [
                            Text("Scratch cards",
                                style: TextStyle(color: ColorConstants.grey)),
                            SizedBox(height: 5),
                            Text("0",
                                style: TextStyle(
                                    color: ColorConstants.black, fontSize: 20))
                          ],
                        )),
                      ),
                    )
                  ],
                ),
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

  AppBar Appbar() {
    return AppBar(
      backgroundColor: ColorConstants.Buttoncolor,
      title: Row(
        children: [
          Positioned(
            left: 0,
            top: 5,
            bottom: 3,
            child: Container(
                height: 40,
                width: 80,
                child: Image.asset("assets/images/amazonlogo.png")),
          ),
          Text(".in"),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
    );
  }
}
