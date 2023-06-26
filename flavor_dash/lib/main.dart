import 'package:flavor_dash/screens/location/location_screen.dart';
import 'package:flutter/material.dart';
import 'config/config.dart';

void main(List<String> args) {
  runApp(const FlavorDash());
}

///Main App
class FlavorDash extends StatelessWidget {
  const FlavorDash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flavor Dash',
      theme: theme(),
      onGenerateRoute: AppRounter.onGenerateRoute,
      initialRoute: LocationScreen.routeName,
    );
  }
}
