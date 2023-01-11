import 'package:flutter/material.dart';
import '../common/top_rated_movie.dart';
import '../widgets/custom_text_row.dart';
import '../common/best_movie_of_year.dart';
import '../common/best_movie_of_weak.dart';
import '../controller/controller_movie.dart';
import 'details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MovieController crtlMovie = MovieController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("CineMovie", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextRow(label: "Movie of the week", onPressed: () {}),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: crtlMovie.bestMovieOfWeakList.length,
                itemBuilder: (context, index) => InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(movie: crtlMovie.bestMovieOfWeakList[index]),
                        )),
                    child: BestMovieOfWeak(index),
                  ),
            ),
            ),
            CustomTextRow(label: "Best Movie of 2023", onPressed: () {}),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: crtlMovie.bestMovieOfYearList.length,
                itemBuilder: (context, index) => InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(movie: crtlMovie.bestMovieOfYearList[index]),
                        )),
                    child: BestMovieOfYear(index),
                  ),
              ),
            ),
            CustomTextRow(label: "Top Rated Movie", onPressed: () {}),
            Container(
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: crtlMovie.topRatedMovieList.length,
                itemBuilder: (context, index) => InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsPage(movie: crtlMovie.topRatedMovieList[index],),
                        ),),
                    child: TopRatedMovie(index),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
