import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travie/widgets/login_button.dart';
import 'package:travie/widgets/txtbox.dart';

class SignupBusiness extends StatelessWidget {
  const SignupBusiness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only( left: 30, right: 30),
            child: Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const TxtField(hint: "Company Name"),
                  const TxtField(hint: "Location"),
                  const TxtField(hint: "Email ID"),
                  const TxtField(hint: "Phone Number"),
                  const TxtField(hint: "Password"),
                  const TxtField(hint: "Confirm Password"),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: TextButton.icon(
                          label: const Text("Upload your license"),
                          // ignore: void_checks
                          onPressed: () async* {
                            final img = await ImagePicker().pickImage(source: ImageSource.gallery);
                            log(img.toString());
                          },
                          icon: const Icon(
                            Icons.description_outlined,
                            size: 40,
                          )),
                    ),
                  ),
                  const LoginButton(text:"Sign Up")
                ],
              ),
            ),
          )),
    );
  }
}
