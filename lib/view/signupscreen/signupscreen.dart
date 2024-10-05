import 'package:amazon_app/main.dart';
import 'package:amazon_app/view/signinscreen1/siginorcreate_ac.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:amazon_app/view/utils/constants/image_constants/imageconstants.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  TextEditingController emailcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _Appbartitle(),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            _titlecreateac(),
            SizedBox(height: 20),
            _enteremailrow(),
            _textfieldemail(),
            SizedBox(height: 20),
            _navigatorbutton(context),
            SizedBox(height: 20),
            Text(
                "By continuing, you agree to Amazon's conditions of use and\nprivacy notice"),
            SizedBox(height: 30),
            Divider(thickness: 1, color: ColorConstants.grey),
            SizedBox(height: 20),
            _conditionrow(),
            SizedBox(height: 10),
            Text("c 1996-2024, Amazon.com, Inc. or its affiliates"),
          ]),
        ));
  }

  Row _conditionrow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Text("Conditions of use",
              style: TextStyle(
                color: ColorConstants.blue,
              )),
        ),
        SizedBox(width: 15),
        InkWell(
          onTap: () {},
          child: Text("Privacy Notice",
              style: TextStyle(
                color: ColorConstants.blue,
              )),
        ),
        SizedBox(width: 15),
        InkWell(
          onTap: () {},
          child: Text("Help",
              style: TextStyle(
                color: ColorConstants.blue,
              )),
        ),
      ],
    );
  }

  Row _enteremailrow() {
    return Row(
      children: [
        Text("Enter email"),
        Spacer(),
      ],
    );
  }

  Padding _navigatorbutton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            setState(() {});
            if (_formKey.currentState!.validate()) {
              email = emailcontroller.text;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SiginorcreateAccount()));
            }
          },
          style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(ColorConstants.Buttoncolor)),
          child: Text(
            "continue",
          ),
        ),
      ),
    );
  }

  Form _textfieldemail() {
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: emailcontroller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.blue, width: 1)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.red, width: 1)),
        ),
        validator: (value) {
          if (value == null || !emailcontroller.text.contains("@gmail.com")) {
            return "invalid email address";
          }
          return null;
        },
      ),
    );
  }

  Positioned _titlecreateac() {
    return Positioned(
      left: 0,
      top: 0,
      child: Text(
        "Create account",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: ColorConstants.black,
        ),
      ),
    );
  }
}

AppBar _Appbartitle() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 80,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(ImageConstants.Amazon_logo),
                fit: BoxFit.contain),
          ),
        ),
        Text(".in")
      ],
    ),
    centerTitle: true,
  );
}
