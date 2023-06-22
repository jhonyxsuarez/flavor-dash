import 'package:flutter/material.dart';

///Home Screen
class FilterScreen extends StatelessWidget {
  static const String routeName = '/filter';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const FilterScreen(),
        settings: RouteSettings(name: routeName));
  }

  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/location'),
          child: Text('Go to Location')),
    );
  }
}
