import 'package:flutter/material.dart';

///Home Screen
class RestaurantListingScreen extends StatelessWidget {
  static const String routeName = '/restauran_listing';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const RestaurantListingScreen(),
        settings: RouteSettings(name: routeName));
  }

  const RestaurantListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Listing'),
      ),
      body: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/location'),
          child: Text('Go to Location')),
    );
  }
}
