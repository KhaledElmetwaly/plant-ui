import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/screens/components/home/components/featured_plant.dart';

import 'package:ui/screens/components/home/components/header_with_search.dart';
import 'package:ui/screens/components/home/components/recommended_plants.dart';
import 'package:ui/screens/components/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          const RecommendedPlants(),
          TitleWithMoreBtn(press: () {}, title: "Featured plant"),
          const FeaturedPlant(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
