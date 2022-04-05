import 'package:flutter/material.dart';
import 'package:travie/widgets/login_button.dart';
import 'package:travie/widgets/txtbox.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children:  [
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
                  const TxtField(hint: "Email"),
                  const TxtField(hint: "Password"),
                  const LoginButton(
                    text: "Sign In",
                  ),
                   TextButton(
                    child:   Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.red.shade600,
                      ),
                    ),
                    onPressed: () {},
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
