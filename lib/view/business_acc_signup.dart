import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travie/Api/data.dart';
import 'package:travie/model/register_company_model/register_company.dart';
import 'package:travie/view/home_page.dart';
import 'package:travie/widgets/login_button.dart';
import 'package:travie/widgets/txtbox.dart';

class SignupBusiness extends StatelessWidget {
  SignupBusiness({Key? key}) : super(key: key);

  final TextEditingController _name = TextEditingController();
  final TextEditingController _location = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TxtField(
              hint: "Company Name",
              controller: _name,
              pass: false,
            ),
            TxtField(hint: "Location", controller: _location, pass: false),
            TxtField(hint: "Email ID", controller: _email, pass: false),
            TxtField(hint: "Password", controller: _password, pass: true),
            TxtField(
                hint: "Confirm Password",
                controller: _confirmpassword,
                pass: true),
            LoginButton(
              text: "Sign Up",
              onpress: () async {
                await companySignUp();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => const HomeScreen())));
              },
            )
          ],
        ),
      )),
    );
  }

  Future companySignUp() async {
    final name = _name.text;
    final location = _location.text;
    final email = _email.text;
    final password = _password.text;

    final newCompany = RegisterCompany.create(
        companyName: name,
        location: location,
        email: email,
        password: password);
    TravieDb().createCompany(newCompany);
  }
}
