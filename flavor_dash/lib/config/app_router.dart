import 'package:flavor_dash/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRounter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The route is: ${settings.name}');

    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case RestaurantDetailsScreen.routeName:
        return RestaurantDetailsScreen.route();
      case RestaurantListingScreen.routeName:
        return RestaurantListingScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text('error')),
            ),
        settings: RouteSettings(name: '/error'));
  }
}
