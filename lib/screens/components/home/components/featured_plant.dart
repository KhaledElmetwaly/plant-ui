import 'package:flutter/material.dart';

import '../../../../constants.dart';

class FeaturedPlant extends StatelessWidget {
  const FeaturedPlant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          FeaturedPlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturedPlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
          FeaturedPlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    super.key,
    required this.image,
    required this.press,
  });
  final String image;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * .8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
