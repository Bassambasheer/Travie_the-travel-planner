import 'package:flutter/material.dart';

class DrawerCard extends StatelessWidget {
  const DrawerCard({
    required this.ontap,
    required this.txt,
    Key? key,
  }) : super(key: key);
  final String txt;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Card(
        child: ListTile(
          title: Text(txt),
        ),
      ),
    );
  }
}
