import 'package:flutter/material.dart';
import 'package:travie/view/sign_in_page.dart';
import 'package:travie/widgets/login_button.dart';
import 'package:travie/widgets/txtbox.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                  color: Colors.grey.withOpacity(0.3),
                ),
                width: 300,
                height: 450,
              child: Column(
                children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                     child: const Text(
                      "Welcome to Travie.",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 20, 23, 29),
                          fontWeight: FontWeight.w900),
                  ),
                   ),
                  const SizedBox(height: 10),
                  const TxtField(hint: "Username"),
                  const TxtField(hint: "Email"),
                  const TxtField(hint: "Password"),
                  const TxtField(hint: "Confirm Password"),
                  const LoginButton(text: "Sign Up",),
                  TextButton(
                    child: const Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                      textAlign: TextAlign.right,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) => const SignInScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
