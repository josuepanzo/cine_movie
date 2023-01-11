import 'package:flutter/material.dart';

import '../controller/controller_movie.dart';

class TopRatedMovie extends StatelessWidget {
  final int index;
  // ignore: use_key_in_widget_constructors
  const TopRatedMovie(this.index);

  @override
  Widget build(BuildContext context) {
    MovieController crtlMovie = MovieController();
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Card(
            elevation: 10,
            child: Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(crtlMovie.topRatedMovieList[index].image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            crtlMovie.topRatedMovieList[index].title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
