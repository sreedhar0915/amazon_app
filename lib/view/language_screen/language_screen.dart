import 'package:amazon_app/view/signinorcreatescreen/signinorcreatescreen.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _languagetitle(),
          SizedBox(height: 20),
          _languagebutton(),
          SizedBox(height: 30),
          _buildinkwelltonextscreen(context)
        ],
      ),
    ));
  }

  Positioned _languagetitle() {
    return Positioned(
      top: 0,
      left: 5,
      child: Container(
        child: Text(
          "Choose your language",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Column _languagebutton() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFDAEAF7),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("English")),
                ),
              ),
              SizedBox(width: 45),
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFEFD7DF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("हिन्दी")),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFF7E8B5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("தமிழ்")),
                ),
              ),
              SizedBox(width: 45),
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFD8EFCF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("తెలుగు")),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFF4E9C7),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("മലയാളം")),
                ),
              ),
              SizedBox(width: 45),
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFC9D9E5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("ಕನ್ನಡ")),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFF4D9F5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("मराठी")),
                ),
              ),
              SizedBox(width: 45),
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xFFF6F5D7),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("বাংলা")),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding _buildinkwelltonextscreen(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
          onTap: () {
            setState(() {});
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Signinscreen(),
                ));
          },
          child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorConstants.Buttoncolor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("Continue in English")))),
    );
  }
}
