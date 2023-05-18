import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
    required this.icon,
  });
  final String icon;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.height * .03),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(.22),
              offset: const Offset(0, 15),
            ),
            const BoxShadow(
                offset: Offset(-13, -13), blurRadius: 22, color: Colors.white),
          ]),
      child: SvgPicture.asset(icon),
    );
  }
}
