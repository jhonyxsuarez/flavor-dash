// import 'package:flavor_dash/config/config.dart';

import 'package:flutter/material.dart';

import 'config/app_router.dart';
import 'config/theme.dart';

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
      initialRoute: '/',
    );
  }
}
