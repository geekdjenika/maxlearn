import 'package:flutter/material.dart';

class OAuthTile extends StatelessWidget {
  const OAuthTile({super.key, required this.icon, required this.text});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width * .425,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/$icon.png",
                width: text == "Facebook" ? 22.0 : 35.0,
                height: text == "Facebook" ? 22.0 : 35.0,
              ),
              SizedBox(
                width: text == "Facebook" ? 8.0 : 0.0,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
