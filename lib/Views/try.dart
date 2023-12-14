// import 'package:flutter/material.dart';
// import 'package:weather_app/models/weather_model.dart';

// class WeatherInfoBody extends StatelessWidget {
//   const WeatherInfoBody({super.key, required this.weatherModel});
//   final WeatherModel weatherModel;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             weatherModel.cityName,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 32,
//             ),
//           ),
//           Text(
//             'Updated at :${weatherModel.date.hour}:${weatherModel.date.minute}',
//             style: const TextStyle(
//               fontSize: 24,
//             ),
//           ),
//           const SizedBox(
//             height: 32,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Image.network(
//                 weatherModel.image != null ? weatherModel.image! : " ",
//                 // weatherModel.image??" "
//               ),
//               Text(
//                 'MaxTemperature:${weatherModel.maxtemp.round()}',
//                 style: const TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 32,
//                 ),
//               ),
//               Column(
//                 children: [
//                   Text(
//                     'MinTemperature:${weatherModel.mintemp.round()}',
//                     style: const TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                   Text(
//                     weatherModel.mintemp.toString(),
//                     style: const TextStyle(
//                       fontSize: 16,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           const SizedBox(
//             height: 32,
//           ),
//           Text(
//             weatherModel.status,
//             style: const TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 32,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
