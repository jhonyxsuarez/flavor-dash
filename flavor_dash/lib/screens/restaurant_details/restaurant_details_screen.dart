import 'package:flutter/material.dart';

///Home Screen
class RestaurantDetailsScreen extends StatelessWidget {
  static const String routeName = '/restaurant_details';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const RestaurantDetailsScreen(),
        settings: RouteSettings(name: routeName));
  }

  const RestaurantDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Details'),
      ),
      body: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/location'),
          child: Text('Go to Location')),
    );
  }
}
