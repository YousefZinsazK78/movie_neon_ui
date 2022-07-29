import 'package:flutter/material.dart';
import 'package:neon_movie_ui/src/screens/home/widget/genre_cart.dart';
import 'package:neon_movie_ui/src/utils/constants/constants.dart';

class Genres extends StatelessWidget {
  const Genres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Action",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animation",
    ];
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) {
          return GenreCard(
            genre: genres[index],
          );
        },
      ),
    );
  }
}
