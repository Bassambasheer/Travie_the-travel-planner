import 'package:flutter/material.dart';
import 'package:travie/widgets/your_orders.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(r"asset\hotel.jpg"), fit: BoxFit.fill)),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Name",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Your Orders",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const Divider(
            thickness: 5,
          ),
          const YourOrders(),
        ],
      ),
    );
  }
}
