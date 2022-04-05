
import 'package:flutter/material.dart';
import 'package:travie/view/business_acc_signup.dart';
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
            ontap: () {},
          ),
          DrawerCard(
            txt: "Dashboard",
            ontap: () {},
          ),
          DrawerCard(
            txt: "Create your Business Account",
            ontap: () {
               Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => const SignupBusiness()));
            },
          ),
          DrawerCard(
            txt: "Log In",
            ontap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => const SignInScreen()));
            },
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
