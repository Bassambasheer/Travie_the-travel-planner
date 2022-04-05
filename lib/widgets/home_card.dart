import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  HomeCard({
    this.lfttxt,
    this.rhttxt,
    required this.txt,
    required this.axis,
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  MainAxisAlignment axis;
  String txt;
  String? lfttxt;
  String? rhttxt;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: axis,
      children: [
        Text(lfttxt!,
        textAlign: TextAlign.center,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                width: size.width / 2,
                height: size.height / 2.5,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Text(
                    txt,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Grapenuts"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: size.width / 2.6,
                  height: size.height / 4,
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(r"asset\bg1.png"))),
                ),
              ),
            ],
          ),
        ),
         Text(rhttxt!,
         textAlign: TextAlign.center,),
      ],
    );
  }
}
