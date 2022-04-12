import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  LoginButton({
    required this.onpress,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  Function onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black)),
        onPressed: () {
          onpress();
        },
        child: Text(text),
      ),
    );
  }
}
