import 'package:flutter/material.dart';
import 'package:neon_movie_ui/src/models/movie.dart';
import 'package:neon_movie_ui/src/screens/home/widget/movie_card.dart';
import 'package:neon_movie_ui/src/utils/constants/constants.dart';
import 'dart:math' as math;

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  late PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: initialPage,
      viewportFraction: 0.8,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.95,
        child: PageView.builder(
          controller: _pageController,
          itemCount: movies.length,
          physics: const ClampingScrollPhysics(),
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          itemBuilder: (context, index) {
            return AnimatedBuilder(
              animation: _pageController,
              builder: (context, child) {
                double value = 0;
                if (_pageController.position.haveDimensions) {
                  value = index - _pageController.page!;
                  value = (value * 0.038).clamp(-1, 1);
                }
                return AnimatedOpacity(
                  duration: const Duration(milliseconds: 350),
                  opacity: initialPage == index ? 1 : 0.4,
                  child: Transform.rotate(
                    angle: math.pi * value,
                    child: MovieCard(movie: movies[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
