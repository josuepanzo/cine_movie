import 'package:flutter/material.dart';
import '../controller/controller_movie.dart';

// ignore: must_be_immutable
class BestMovieOfWeak extends StatelessWidget {
  final int index;
  // ignore: prefer_const_constructors_in_immutables
  BestMovieOfWeak(this.index, {Key? key}) : super(key: key);

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
                  image: AssetImage(crtlMovie.bestMovieOfWeakList[index].image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            crtlMovie.bestMovieOfWeakList[index].title,
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
