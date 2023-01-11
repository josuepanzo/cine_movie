import 'package:flutter/material.dart';

import '../model/movie.dart';
import '../widgets/custom_icon_card.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  Movie movie;
  DetailsPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Card(
                  elevation: 10,
                  child: Container(
                    width: 260,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(movie.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                movie.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 13.0),
              child: Table(
                children: [
                  const TableRow(
                    children: [
                      CustomIconCard(
                        iconData: Icons.watch_later_outlined,
                        label: "117 min",
                      ),
                      CustomIconCard(
                        iconData: Icons.calendar_today,
                        label: "2023",
                      ),
                      CustomIconCard(
                        iconData: Icons.star_border,
                        label: "8.4/10",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                movie.description,
                style: const TextStyle(height: 1.2, letterSpacing: .8, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.check_circle_outline, color: Colors.white),
                  Text(
                    'Watch Trailer',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellowAccent,
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.monetization_on, color: Colors.black),
                  Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
