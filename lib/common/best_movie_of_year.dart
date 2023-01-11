import 'package:flutter/material.dart';

class BestMovieOfYear extends StatelessWidget {
  const BestMovieOfYear({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 8.0,
          child: Row(
            children: [
              Container(
                width: 130,
                height: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    bottomLeft: Radius.circular(7),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/image/donkey.png"),
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
                    const Text("Donkey",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(height: 10),
                    const SizedBox(
                        width: 210,
                        child: Text(
                            "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt laborum quos ratione excepturi ea facilis odio.")),
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
