import 'package:flutter/material.dart';
import 'package:ui/screens/components/home/components/recommended_plant_card.dart';

import '../../../details/components/details_screen.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            title: "samantha",
            image: "assets/images/image_1.png",
            country: "Russia",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
            price: 440,
          ),
          RecommendPlantCard(
            title: "Angelica",
            image: "assets/images/image_2.png",
            country: "Russia",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
            price: 440,
          ),
          RecommendPlantCard(
            title: "Montana",
            image: "assets/images/image_3.png",
            country: "Russia",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
            price: 440,
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
