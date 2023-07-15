import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar(
      {required this.back, required this.title, required this.subtitle});

  final bool back;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            color: const Color(0xFF0c1c2c),
          ),
          Transform.translate(
            offset: Offset(-MediaQuery.of(context).size.height * 0.05, 0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF162534),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(
                    MediaQuery.of(context).size.height / 1.3,
                    MediaQuery.of(context).size.height,
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(
              -MediaQuery.of(context).size.height * 0.16,
              -MediaQuery.of(context).size.height * 0.1,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1f2e3c),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(
                    MediaQuery.of(context).size.height / 1.125,
                    MediaQuery.of(context).size.height,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                back
                    ? Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .05,
                        ),
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : const SizedBox(),
                const Expanded(
                  child: SizedBox(),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
