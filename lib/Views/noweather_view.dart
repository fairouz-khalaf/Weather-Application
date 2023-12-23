import 'package:flutter/material.dart';
import 'package:weather_app/widgets/custom_button.dart';

class NoWeather_View extends StatefulWidget {
  const NoWeather_View({super.key});

  @override
  State<NoWeather_View> createState() => _NoWeather_ViewState();
}

class _NoWeather_ViewState extends State<NoWeather_View> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: 360,
        height: 400,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(15) // Adjust the radius as needed
            ),
        child: Image.asset(
          'assets/weather2-removebg-preview.png',
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      const CustomButton(
        text: "Get Started",
      )
    ]));
  }
}
