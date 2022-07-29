import 'package:flutter/material.dart';
import 'package:neon_movie_ui/src/models/movie.dart';
import 'package:neon_movie_ui/src/screens/details/widget/backdrop_rating.dart';
import 'package:neon_movie_ui/src/screens/details/widget/cast_item.dart';
import 'package:neon_movie_ui/src/screens/details/widget/genre.dart';
import 'package:neon_movie_ui/src/screens/details/widget/title_duration_and_fab_btn.dart';
import 'package:neon_movie_ui/src/utils/constants/constants.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackDropRating(
            size: size,
            movie: movie,
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          TitleDurationAndFabBtn(
            movie: movie,
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Genre1(movie: movie),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "plot summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
            ),
            child: Text(movie.plot),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}
