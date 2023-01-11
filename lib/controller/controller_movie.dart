import '../model/movie.dart';

class MovieController {
  final List<Movie> bestMovieOfWeakList = [
    Movie(
      id: 1,
      title: "Assassin Cread",
      description:
          'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt '
          ' laborum quos ratione excepturi ea facilis odio.',
      image: 'assets/image/assassin.png',
    ),
    Movie(
      id: 2,
      title: "Call of Duty",
      description:
          'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt '
          ' laborum quos ratione excepturi ea facilis odio.',
      image: 'assets/image/cod.png',
    ),
    Movie(
      id: 3,
      title: "God Of War",
      description:
          'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt '
          ' laborum quos ratione excepturi ea facilis odio.',
      image: 'assets/image/gow.png',
    ),
  ];

  final List<Movie> bestMovieOfYearList = [
    Movie(
      id: 1,
      title: "Grand Theft Auto",
      description:
          'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt '
          ' laborum quos ratione excepturi ea facilis odio.',
      image: 'assets/image/gta.png',
    ),
    Movie(
      id: 2,
      title: "Donkey",
      description:
          'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt '
          ' laborum quos ratione excepturi ea facilis odio.',
      image: 'assets/image/donkey.png',
    ),
    Movie(
      id: 3,
      title: "League Of Legends",
      description:
          'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt '
          ' laborum quos ratione excepturi ea facilis odio.',
      image: 'assets/image/lol.png',
    ),
  ];

  final List<Movie> topRatedMovieList = [
    Movie(
      id: 1,
      title: "Sonic",
      description:
          'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt '
          ' laborum quos ratione excepturi ea facilis odio.',
      image: 'assets/image/sonic.png',
    ),
    Movie(
      id: 2,
      title: "Half-Life",
      description:
          'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt '
          ' laborum quos ratione excepturi ea facilis odio.',
      image: 'assets/image/cs.png',
    ),
    Movie(
      id: 3,
      title: "Biohazard",
      description:
          'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt '
          ' laborum quos ratione excepturi ea facilis odio.',
      image: 'assets/image/resident.png',
    ),
  ];
}
