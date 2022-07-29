import 'package:flutter/material.dart';
import 'package:neon_movie_ui/src/utils/constants/constants.dart';

class CastAndCrew extends StatelessWidget {
  final List<Map> casts;
  const CastAndCrew({
    Key? key,
    required this.casts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        kDefaultPadding,
      ),
      child: Column(
        children: [
          Text(
            "Cast and Crew",
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: casts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CastCard(cast: casts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CastCard extends StatelessWidget {
  final Map cast;
  const CastCard({Key? key, required this.cast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: kDefaultPadding,
      ),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  cast['image'],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(
            cast['orginalName'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          const SizedBox(
            height: kDefaultPadding / 4,
          ),
          Text(
            cast['movieName'],
            maxLines: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: kTextLightColor,
            ),
          ),
        ],
      ),
    );
  }
}
