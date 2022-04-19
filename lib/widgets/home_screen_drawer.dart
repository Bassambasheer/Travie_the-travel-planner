import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travie/view/profile_page.dart';
import 'package:travie/view/sign_in_page.dart';
import 'package:travie/widgets/drawer_card.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: ListView(
        children: [
          DrawerCard(
            txt: "Your Profile",
            ontap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) =>  ProfileScreen()));
            },
          ),
          DrawerCard(
            txt: "Privacy Policy",
            ontap: () {},
          ),
          DrawerCard(
            txt: "Settings",
            ontap: () {},
          ),
          DrawerCard(
            txt: "LogOut",
            ontap: () async {
              final _prefs = await SharedPreferences.getInstance();
              _prefs.clear();
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => SignInScreen())));
            },
          ),
        ],
      )),
    );
  }
}
