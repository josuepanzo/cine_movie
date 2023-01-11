import 'package:flutter/material.dart';

import '../controller/controller_movie.dart';

class BestMovieOfYear extends StatelessWidget {
  final int index;
  // ignore: use_key_in_widget_constructors
  const BestMovieOfYear(this.index);
  @override
  Widget build(BuildContext context) {
    MovieController crtlMovie = MovieController();
    return Column(
      children: [
        Card(
          elevation: 8.0,
          child: Row(
            children: [
              Container(
                width: 130,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(7),
                    bottomLeft: Radius.circular(7),
                  ),
                  image: DecorationImage(
                    image:
                        AssetImage(crtlMovie.bestMovieOfYearList[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(crtlMovie.bestMovieOfYearList[index].title,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 210,
                      child: Text(
                        crtlMovie.bestMovieOfYearList[index].description,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
