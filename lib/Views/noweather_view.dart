import 'package:flutter/material.dart';

class NoWeather_View extends StatefulWidget {
  const NoWeather_View({super.key});

  @override
  State<NoWeather_View> createState() => _NoWeather_ViewState();
}

class _NoWeather_ViewState extends State<NoWeather_View> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
          child: Text(
        "There is No Weather NOW ! ",
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      SizedBox(
        height: 15,
      ),
      Text(
        'Search Now! 🔎',
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ]));
  }
}
