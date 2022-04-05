import 'package:flutter/material.dart';
import 'package:travie/view/sign_up_page.dart';
import 'package:travie/widgets/home_screen_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
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
