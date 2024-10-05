import 'package:amazon_app/view/bottomnavibar/bottomnavibar.dart';
import 'package:amazon_app/view/signinscreen1/siginorcreate_ac.dart';
import 'package:amazon_app/view/signupscreen/signupscreen.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:amazon_app/view/utils/constants/image_constants/imageconstants.dart';
import 'package:flutter/material.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Amazonlogo(),
            SizedBox(height: 15),
            Center(
              child: Text(
                "Sign in to your account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            Text("View your wish list"),
            SizedBox(height: 15),
            Text("Find & reorder past purchases"),
            SizedBox(height: 15),
            Text("Track your purchases"),
            SizedBox(height: 20),
            _navigatebuttons(context),
          ],
        ),
      ),
    );
  }

  Center _Amazonlogo() {
    return Center(
      child: Container(
        height: 120,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(ImageConstants.Amazon_logo),
              fit: BoxFit.contain),
        ),
      ),
    );
  }

  Column _navigatebuttons(BuildContext context) {
    return Column(
      children: [
        InkWell(
            onTap: () {
              setState(() {});
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SiginorcreateAccount(),
                  ));
            },
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: ColorConstants.Buttoncolor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorConstants.black)),
                child: Center(child: Text("Already a customer? Sign in")))),
        SizedBox(height: 20),
        InkWell(
            onTap: () {
              setState(() {});
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signupscreen(),
                  ));
            },
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorConstants.black)),
                child: Center(
                    child: Text("New to Amazon.in? Create an account")))),
        SizedBox(height: 20),
        InkWell(
            onTap: () {
              setState(() {});
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bottomnavibar(),
                  ));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorConstants.black)),
                height: 50,
                child: Center(child: Text("Skip sign in")))),
      ],
    );
  }
}
