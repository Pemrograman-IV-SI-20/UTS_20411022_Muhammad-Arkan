import 'package:flutter/material.dart';
import 'package:toko_gitar_flutter/Components/custom_surfix_icon.dart';
import 'package:toko_gitar_flutter/Components/default_button_custome_color.dart';
import 'package:toko_gitar_flutter/Screens/Login/LoginScreens.dart';
import 'package:toko_gitar_flutter/size_config.dart';
import 'package:toko_gitar_flutter/utils/constants.dart';

class SignUpform extends StatefulWidget {
  @override 
  _SignUpform createState() => _SignUpform();
}

class _SignUpform extends State<SignUpform> {

  final _formKey = GlobalKey<FormState>();
  String? namalengkap;
  String? username;
  String? email;
  String? password;
  bool? remeber = false;

  TextEditingController txtNamaLengkap = TextEditingController(),
                        txtUserName = TextEditingController(),
                        txtEmail = TextEditingController(),
                        txtPassword= TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override 
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildNamaLengkap(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          
            DefaultButtonCustomeColor(
              color: kColorBlue,
              text: "Register",
              press: () {},
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                },
                child: Text("Sudah Punya Akun? Masuk Disini", 
                style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
        ],
        ),
      );
  }
  TextFormField buildNamaLengkap() {
    return TextFormField(
      controller: txtNamaLengkap,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Nama Lengkap',
        hintText: 'Masukan Nama Lengkap',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
      )),
      );
  }

  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukan Username',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/account.svg",
      )),
    );
  }

  TextFormField buildEmail() {
    return TextFormField(
      controller: txtEmail,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Masukan Email',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Mail.svg",
      )),
      );
  }

  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukan Password',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
      )),
      );
  }
}