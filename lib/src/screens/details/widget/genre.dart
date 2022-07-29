import 'package:flutter/material.dart';
import 'package:neon_movie_ui/src/models/movie.dart';
import 'package:neon_movie_ui/src/screens/home/widget/genre_cart.dart';
import 'package:neon_movie_ui/src/utils/constants/constants.dart';

class Genre1 extends StatelessWidget {
  final Movie movie;
  const Genre1({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        kDefaultPadding / 2,
      ),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          itemCount: movie.genra.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GenreCard(genre: movie.genra[index]);
          },
        ),
      ),
    );
  }
}
