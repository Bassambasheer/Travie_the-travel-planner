import 'package:flutter/material.dart';
import 'package:travie/view/hotels_listing_page.dart';
import 'package:travie/view/sign_up_page.dart';
import 'package:travie/widgets/home_card.dart';
import 'package:travie/widgets/home_screen_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const SideBar(),
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
      body: Column(
        children: [
          HomeCard(
            ontap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => const HotelsScreen()));
            },
            size: size,
            axis: MainAxisAlignment.start,
            txt: "Choose your best fit\n Hotels",
            lfttxt: "",
            rhttxt: "T R A V I E\nalways\nreccomends\nthe\nbest\nfor you ",
          ),
          HomeCard(
            ontap: () {},
            size: size,
            axis: MainAxisAlignment.end,
            txt: "Explore the best Viewpoints nearby",
            rhttxt: "",
            lfttxt:
                "Wanna\nfind\npeace,\nT R A V I E\nshows\nnavigation\nto\nheavenly vibes",
          ),
        ],
      ),
    );
  }
}
