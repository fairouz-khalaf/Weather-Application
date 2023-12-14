import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

// ignore: camel_case_types
class Search_view extends StatefulWidget {
  const Search_view({super.key});

  @override
  State<Search_view> createState() => _Search_viewState();
}

// ignore: camel_case_types
class _Search_viewState extends State<Search_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Manage Cities",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 60),
        child: TextField(
          onSubmitted: (value) async {
            var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(cityName: value);
            // ignore: use_build_context_synchronously
            Navigator.of(context).pop();
          },
          decoration: InputDecoration(
              hintText: "Search for a City or Airport",
              labelText: "Search",
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.blue,
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.blueAccent)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey))),
        ),
      ),
    );
  }
}
