import 'package:flutter/material.dart';
import 'package:travie/view/business_acc_signup.dart';
import 'package:travie/view/home_page.dart';
import 'package:travie/view/sign_up_page.dart';
import 'package:travie/widgets/login_button.dart';
import 'package:travie/widgets/txtbox.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(
            r"asset\bgm.jpg",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black.withOpacity(0.5),
            ),
            width: 300,
            height: 415,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    "Travie.",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Plan your best trip with us",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  TxtField(
                    hint: "Email",
                    controller: _email,
                    pass: false,
                  ),
                  TxtField(
                    hint: "Password",
                    controller: _password,
                    pass: true,
                  ),
                  LoginButton(
                    onpress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const HomeScreen())));
                    },
                    text: "Sign In",
                  ),
                  TextButton(
                    child: const Text(
                      "Create new Account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => SignupScreen())));
                    },
                  ),
                  TextButton(
                    child: const Text(
                      "Create a Business Account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => SignupBusiness()));
                    },
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
