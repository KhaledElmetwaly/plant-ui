import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/screens/details/components/image_icon_card.dart';
import 'package:ui/screens/details/components/title_price.dart';

class Body1 extends StatelessWidget {
  const Body1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ImagesAndIconsCard(),
            const TitleAndPrice(
              title: "Angelica\n",
              country: "Russia",
              price: 440,
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Row(
              children: [
                Container(
                  height: 84,
                  width: size.width / 2,
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(25)),
                  ),
                  child: const Center(
                    child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width / 7,
                  height: 84,
                ),
                Container(
                  child: const Text(
                    "Description",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: kDefaultPadding,
            )
          ],
        ),
      ),
    );
  }
}
