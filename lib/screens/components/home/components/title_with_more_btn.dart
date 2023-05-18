import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/screens/components/home/components/title_with_custom_underline.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    required this.press,
    required this.title,
    super.key,
  });
  final String title;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithCustomUnderline(
            text: title,
          ),
          TextButton(
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: kPrimaryColor),
            onPressed: press,
            child: const Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
