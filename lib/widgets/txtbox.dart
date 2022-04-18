import 'package:flutter/material.dart';

class TxtField extends StatelessWidget {
  TxtField({
    required this.hint,
    Key? key,
    required this.pass,
    required this.controller,
  }) : super(key: key);
  final String hint;
  final bool pass;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        controller: controller,
        obscureText: pass,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          enabledBorder: OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.grey, width: 0.4)),
          hintText: hint,
        ),
      ),
    );
  }
}
