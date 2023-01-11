import 'package:flutter/material.dart';

import '../widgets/custom_icon_card.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Column(
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
                    image: const DecorationImage(
                      image: AssetImage("assets/image/donkey.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Text(
            "Spider-Man: Into the Spider-Verse",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          Table(
            children: [
              const TableRow(
                children: [
                  CustomIconCard(
                    iconData: Icons.watch_later_outlined,
                    label: "117 min",
                  ),
                  CustomIconCard(
                    iconData: Icons.watch_later_outlined,
                    label: "117 min",
                  ),
                  CustomIconCard(
                    iconData: Icons.watch_later_outlined,
                    label: "117 min",
                  ),
                ],
              ),
            ],
          ),
          const Text(
            "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt laborum quos ratione excepturi ea facilis odio.",
            style: TextStyle(height: 1, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.play_circle_outline_sharp,
                          color: Colors.white),
                      Text('Watch Trailer',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.yellowAccent,
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.play_circle_outline_sharp,
                          color: Colors.black),
                      Text('Buy Now', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
