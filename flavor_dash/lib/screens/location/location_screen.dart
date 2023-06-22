import 'package:flutter/material.dart';

///Home Screen
class LocationScreen extends StatelessWidget {
  static const String routeName = '/location';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const LocationScreen(),
        settings: RouteSettings(name: routeName));
  }

  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),
      body: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
          child: Text('Go to Home')),
    );
  }
}
