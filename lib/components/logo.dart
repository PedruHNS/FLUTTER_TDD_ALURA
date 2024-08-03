import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.savings,
            size: 28,
          ),
        ),
        RichText(
          text: const TextSpan(
            text: "Any",
            style: TextStyle(
                fontWeight: FontWeight.w700, color: Colors.black, fontSize: 28),
            children: <TextSpan>[
              TextSpan(
                text: "Bank",
                style: TextStyle(
                    fontWeight: FontWeight.w200, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
