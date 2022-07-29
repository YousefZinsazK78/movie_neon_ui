import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neon_movie_ui/src/utils/constants/constants.dart';

import 'widget/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          padding: const EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/images/search.svg",
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: const Body(),
    );
  }
}
