import 'package:amazon_app/main.dart';
import 'package:amazon_app/view/bottomnavibar/bottomnavibar.dart';
import 'package:amazon_app/view/utils/constants/color_constants/colorconstants.dart';
import 'package:amazon_app/view/utils/constants/image_constants/imageconstants.dart';
import 'package:flutter/material.dart';

class SiginorcreateAccount extends StatefulWidget {
  const SiginorcreateAccount({super.key});

  @override
  State<SiginorcreateAccount> createState() => _SiginorcreateAccountState();
}

class _SiginorcreateAccountState extends State<SiginorcreateAccount> {
  TextEditingController Passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _Appbartitle(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            _titlesignin(),
            SizedBox(height: 20),
            _emailrow(),
            SizedBox(height: 20),
            _textfieldpassword(),
            SizedBox(height: 20),
            _checkboxrow(),
            SizedBox(height: 20),
            _navigatortobottomnaviscreen(context),
            SizedBox(height: 20),
            Text(
                "By continuing, you agree to Amazon's conditions of use and\nprivacy notice"),
            SizedBox(height: 30),
            Divider(thickness: 1, color: ColorConstants.grey),
            SizedBox(height: 20),
            _conditionrow(),
            SizedBox(width: 20),
            Text("c 1996-2024, Amazon.com, Inc. or its affiliates"),
          ],
        ),
      ),
    );
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

  Row _emailrow() {
    return Row(
      children: [
        Text(email),
        SizedBox(
          width: 8,
        ),
        Text(
          "Change",
          style: TextStyle(fontSize: 10, color: ColorConstants.blue),
        ),
        Spacer(),
      ],
    );
  }

  Padding _checkboxrow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Checkbox(value: true, onChanged: ((value) {})),
          Text(
            "Show password",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {},
            child: Text(
              "Forgot password?",
              style: TextStyle(color: ColorConstants.blue),
            ),
          ),
        ],
      ),
    );
  }

  Positioned _titlesignin() {
    return Positioned(
      left: 0,
      top: 0,
      child: Text(
        "Sign in",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: ColorConstants.black,
        ),
      ),
    );
  }

  Container _navigatortobottomnaviscreen(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorConstants.Buttoncolor,
          borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          setState(() {});
          if (_formKey.currentState!.validate()) {
            Passwordcontroller.text;
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Bottomnavibar(),
                ));
          }
        },
        child: Center(
          child: Text(
            "sign in",
          ),
        ),
      ),
    );
  }

  Form _textfieldpassword() {
    return Form(
      key: _formKey,
      child: TextFormField(
        controller: Passwordcontroller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorConstants.black, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: ColorConstants.blue, width: 1)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.red, width: 1)),
        ),
        validator: (value) {
          if (Passwordcontroller.text.length < 5) {
            return "password must contain atleast 5 characters";
          } else if (value!.isEmpty) {
            return "enter password";
          } else {
            return null;
          }
        },
      ),
    );
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
}
