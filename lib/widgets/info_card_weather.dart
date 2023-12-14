import 'package:flutter/material.dart';
import 'package:weather_app/models/info_model.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, required this.model}) : super(key: key);

  final InfoModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(model.image)),
        const SizedBox(height: 9),
        Text(model.name ?? ''),
        const SizedBox(height: 15),
        Text(model.value.toString()),
        const SizedBox(height: 8), // Optional: Add spacing between items
      ],
    );
  }
}
