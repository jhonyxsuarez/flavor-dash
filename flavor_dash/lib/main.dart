import 'package:flavor_dash/config/app_router.dart';
import 'package:flavor_dash/screens/screens.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(FlavorDash());
}

///Main App
class FlavorDash extends StatelessWidget {
  const FlavorDash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flavor Dash',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomeScreen(),
      onGenerateRoute: AppRounter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}
