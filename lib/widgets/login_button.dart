import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    required this.text,Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
       backgroundColor:MaterialStateProperty.all(Colors.black)
        ),
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
