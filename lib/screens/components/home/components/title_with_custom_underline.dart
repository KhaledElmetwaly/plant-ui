import 'package:flutter/material.dart';

import '../../../../constants.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({Key? key, required this.text})
      : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(right: kDefaultPadding / 4),
                height: 7,
                color: kPrimaryColor.withOpacity(.2),
              ))
        ],
      ),
    );
  }
}
