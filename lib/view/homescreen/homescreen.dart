import 'package:amazon_app/view/DummyDB.dart';
import 'package:amazon_app/view/homescreen/Widget/Itemscontainer.dart';
import 'package:amazon_app/view/homescreen/Widget/offercontainer.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Location(),
            Itemcontainerrow(),
            Carouselslider(),
            // SizedBox(
            //   height: 250,
            //   child: ListView.separated(
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, index) => Offercontainer(
            //       offername: DummyDb.offer[index]["offername"],
            //       offerimage: DummyDb.offer[index]["offerimage"],
            //     ),
            //     separatorBuilder: (context, index) => SizedBox(width: 5),
            //     itemCount: DummyDb.offer.length,
            //   ),
            // ),
            Giff(),
            Sponsoredcontainer(),
            Freedeliveryrow(),
          ],
        ),
      ),
    );
  }

  SizedBox Itemcontainerrow() {
    return SizedBox(
      height: 114,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Itemscontainer(
                itemimages: DummyDb.MenuItems[index]["Itemimages"],
                itemnames: DummyDb.MenuItems[index]["Itemnames"],
              ),
          separatorBuilder: (context, index) => SizedBox(width: 0),
          itemCount: 8),
    );
  }

  Container Location() {
    return Container(
      height: 50,
      width: double.infinity,
      color: ColorConstants.appbar,
      child: Row(
        children: [
          Icon(Icons.location_pin),
          SizedBox(width: 5),
          Text("Delivering to kochi 682507 - Update location")
        ],
      ),
    );
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

  InkWell Giff() {
    return InkWell(
      onTap: () {},
      child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(color: ColorConstants.Buttoncolor),
          child: ClipRect(
            child: Image.network(
              "assets/images/giff.webp",
              fit: BoxFit.cover,
            ),
          )),
    );
  }

  //https://media4.s-nbcnews.com/j/newscms/2020_38/3412554/amazon-prime-day-history-kr-2x1-tease-200916_1e1dc75f16dc284efb377fa53db4395c.fit-760w.gif
  CarouselSlider Carouselslider() {
    return CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          onPageChanged: (index, reason) {},
          scrollDirection: Axis.horizontal,
        ),
        items: [
          Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                "assets/images/livenow.jpeg",
                fit: BoxFit.cover,
              )),
          Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                "assets/images/tv.jpeg",
                fit: BoxFit.cover,
              )),
          Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                "assets/images/amazondiscount.jpg",
                fit: BoxFit.cover,
              )),
        ]);
  }

  Container Sponsoredcontainer() {
    return Container(
      height: 30,
      width: double.infinity,
      color: ColorConstants.Buttoncolor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Row(
            children: [
              Spacer(),
              Text("Sponsored"),
              SizedBox(width: 5),
              CircleAvatar(
                radius: 7,
                backgroundColor: ColorConstants.grey,
                child: Center(
                  child: Text(
                    "i",
                    style: TextStyle(color: ColorConstants.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container Freedeliveryrow() {
    return Container(
      height: 70,
      width: double.infinity,
      color: Colors.red,
      child: Row(
        children: [
          SizedBox(width: 50),
          CircleAvatar(
            radius: 12,
            child: Center(child: Icon(Icons.delivery_dining)),
          ),
          SizedBox(width: 10),
          InkWell(
            onTap: () {},
            child: Text(
              "FREE\nDELIVERY",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 50),
          CircleAvatar(
            radius: 12,
            child: Center(child: Icon(Icons.payment_outlined)),
          ),
          SizedBox(width: 10),
          InkWell(
            onTap: () {},
            child: Text(
              "PAY ON\nDELIVERY",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 50),
          CircleAvatar(
            radius: 12,
            child: Center(child: Icon(Icons.currency_rupee_outlined)),
          ),
          SizedBox(width: 10),
          InkWell(
            onTap: () {},
            child: Text(
              "EASY\nRETURNS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
