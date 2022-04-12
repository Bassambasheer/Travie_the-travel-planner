import 'package:flutter/material.dart';
import 'package:travie/view/profile_page.dart';
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
                  MaterialPageRoute(builder: (ctx) => const ProfileScreen()));
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
        ],
      )),
    );
  }
}
