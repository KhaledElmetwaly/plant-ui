import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui/screens/details/components/icon_card.dart';

import '../../../constants.dart';

class ImagesAndIconsCard extends StatelessWidget {
  const ImagesAndIconsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * .8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                      ),
                    ),
                    const Spacer(),
                    const IconCard(icon: "assets/icons/sun.svg"),
                    const Spacer(),
                    const IconCard(icon: "assets/icons/icon_2.svg"),
                    const Spacer(),
                    const IconCard(icon: "assets/icons/icon_3.svg"),
                    const Spacer(),
                    const IconCard(icon: "assets/icons/icon_4.svg")
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * .8,
              width: size.width * .75,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(.29)),
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63)),
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/img.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
