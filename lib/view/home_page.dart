import 'package:flutter/material.dart';
import 'package:travie/view/sign_in_page.dart';
import 'package:travie/view/sign_up_page.dart';
import 'package:travie/widgets/drawer_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
            child: ListView(
          children: [
            DrawerCard(
              txt: "Your Profile",
              ontap: () {},
            ),
            DrawerCard(
              txt: "Dashboard",
              ontap: () {},
            ),
            DrawerCard(
              txt: "Create your Business Account",
              ontap: () {},
            ),
            DrawerCard(
              txt: "Log In",
              ontap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => SignInScreen()));
              },
            ),
            DrawerCard(
              txt: "Settings",
              ontap: () {},
            ),
          ],
        )),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const SignupScreen()));
            },
            child: const Text("Register"),
          )
        ],
      ),
    );
  }
}
