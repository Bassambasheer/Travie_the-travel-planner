import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  HomeCard({
    required this.ontap,
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
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: axis,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Text(
            lfttxt!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontFamily: "Biz"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              ontap();
            },
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  width: size.width / 2,
                  height: size.height / 2.5,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
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
                        image: DecorationImage(
                            image: AssetImage(r"asset\bg1.png"))),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            rhttxt!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontFamily: "Biz"),
          ),
        ),
      ],
    );
  }
}
