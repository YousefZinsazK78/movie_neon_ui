import 'package:flutter/material.dart';
import 'package:neon_movie_ui/src/models/movie.dart';
import 'package:neon_movie_ui/src/screens/details/widget/body.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;
  const DetailsScreen({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie: movie),
    );
  }
}
