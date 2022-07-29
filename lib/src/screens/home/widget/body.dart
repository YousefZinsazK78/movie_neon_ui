import 'package:flutter/material.dart';
import 'package:neon_movie_ui/src/screens/home/widget/genres.dart';
import 'package:neon_movie_ui/src/screens/home/widget/movie_carousel.dart';

import 'category_list_item.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CategoryList(),
          Genres(),
          SizedBox(
            height: 5,
          ),
          MovieCarousel(),
        ],
      ),
    );
  }
}
