import 'package:amazon_app/view/DummyDB.dart';
import 'package:amazon_app/view/Menu_screen/Swithaccounts.dart';
import 'package:amazon_app/view/Menu_screen/widget/custom_menu_card.dart';
import 'package:amazon_app/view/signinorcreatescreen/signinorcreatescreen.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 700,
              child: Expanded(
                child: GridView.builder(
                    itemCount: DummyDb.MenuItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0),
                    itemBuilder: (context, index) => CustomMenuCard(
                          itemnames: DummyDb.MenuItems[index]["Itemnames"],
                          itemimages: DummyDb.MenuItems[index]["Itemimages"],
                        )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  _Switchaccountinkwell(context),
                  SizedBox(height: 10),
                  _Signoutinkwell(context),
                  SizedBox(height: 10),
                  Customerserviceinkwell(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  InkWell _Switchaccountinkwell(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Switchaccounts(),
            ));
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text("Switch Accounts",
                  style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 20,
                  )),
              Spacer(),
              Icon(Icons.arrow_right_outlined),
            ],
          ),
        )),
      ),
    );
  }

  InkWell _Signoutinkwell(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Signinscreen(),
            ));
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text("Sign Out",
                  style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 20,
                  )),
              Spacer(),
              Icon(Icons.arrow_right_outlined),
            ],
          ),
        )),
      ),
    );
  }

  InkWell Customerserviceinkwell() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text("Customer Service",
                  style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 20,
                  )),
              Spacer(),
              Icon(Icons.arrow_right_outlined),
            ],
          ),
        )),
      ),
    );
  }

  AppBar Appbar() {
    return AppBar(
      backgroundColor: ColorConstants.Buttoncolor,
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
}
