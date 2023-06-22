import 'package:flutter/material.dart';

///Home Screen
class DeliveryTimeScreen extends StatelessWidget {
  static const String routeName = '/delivery_time';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const DeliveryTimeScreen(),
        settings: RouteSettings(name: routeName));
  }

  const DeliveryTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery Time'),
      ),
      body: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/location'),
          child: Text('Go to Location')),
    );
  }
}
