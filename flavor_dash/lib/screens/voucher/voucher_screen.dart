import 'package:flutter/material.dart';

///Home Screen
class VoucherScreen extends StatelessWidget {
  static const String routeName = '/voucher';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const VoucherScreen(),
        settings: RouteSettings(name: routeName));
  }

  const VoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Voucher'),
      ),
      body: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/location'),
          child: Text('Go to Location')),
    );
  }
}
