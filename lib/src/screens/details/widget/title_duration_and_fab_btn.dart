import 'package:flutter/material.dart';
import 'package:neon_movie_ui/src/models/movie.dart';
import 'package:neon_movie_ui/src/utils/constants/constants.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  final Movie movie;
  const TitleDurationAndFabBtn({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        kDefaultPadding,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Row(
                  children: [
                    Text(
                      movie.year.toString(),
                      style: const TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                    const SizedBox(
                      width: kDefaultPadding,
                    ),
                    const Text(
                      "PG-13",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                    const SizedBox(
                      width: kDefaultPadding,
                    ),
                    const Text(
                      "2h 30min",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 64,
            height: 64,
            child: MaterialButton(
              onPressed: () {},
              color: kSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
