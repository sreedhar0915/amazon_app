import 'package:amazon_app/view/Menu_screen/Menu_screen.dart';
import 'package:amazon_app/view/cart_screen/cart_screen.dart';
import 'package:amazon_app/view/homescreen/homescreen.dart';
import 'package:amazon_app/view/profile_screen/profile_screen.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class Bottomnavibar extends StatefulWidget {
  const Bottomnavibar({super.key});

  @override
  State<Bottomnavibar> createState() => _BottomnavibarState();
}

class _BottomnavibarState extends State<Bottomnavibar> {
  int selecttab = 0;

  // Define a list of screens without the BottomSheet
  final List<Widget> screens = [
    Homescreen(),
    ProfileScreen(),
    Container(), // Placeholder for the BottomSheet
    CartScreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selecttab],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (value) {
        setState(() {
          selecttab = value;
          if (selecttab == 2) {
            _showBottomSheet(context);
            selecttab = 0;
          }
        });
      },
      selectedItemColor: Colors.red,
      unselectedItemColor: ColorConstants.black,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.person),
          icon: Icon(Icons.person_outlined),
          label: "You",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.discount),
          icon: Icon(Icons.discount_outlined),
          label: "More",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.shopping_cart),
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.menu),
          icon: Icon(Icons.menu_outlined),
          label: "Menu",
        ),
      ],
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 500,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "Do more with Amazon",
                  style: TextStyle(
                    color: ColorConstants.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 190,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorConstants.lightgrey,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorConstants.grey),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          Icon(Icons.qr_code_scanner_outlined, size: 40),
                          SizedBox(height: 10),
                          Text("Tap here to enable your camera",
                              style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w600,
                                color: ColorConstants.blue,
                              )),
                          SizedBox(height: 20),
                          Divider(color: ColorConstants.grey),
                          SizedBox(height: 10),
                          Text("Scan any QR to Pay",
                              style: TextStyle(
                                color: ColorConstants.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: 235,
                        decoration: BoxDecoration(
                          color: ColorConstants.lightgrey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: ColorConstants.grey),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Image(
                                  height: 50,
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/pay-removebg-preview.png")),
                              Text("Pay Bills, Send\nMoney & more")
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 100,
                        width: 235,
                        decoration: BoxDecoration(
                          color: ColorConstants.lightgrey,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: ColorConstants.grey),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Image(
                                  height: 45,
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/minitvfree.jpeg")),
                              Text("Watch Free Web\nSeries & Shows")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
