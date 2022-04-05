import 'package:flutter/material.dart';

class TxtField extends StatelessWidget {
  const TxtField({
    required this.hint,
    Key? key,
  }) : super(key: key);
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      border: OutlineInputBorder(),
          hintText: hint,
        ),
      ),
    );
  }
}