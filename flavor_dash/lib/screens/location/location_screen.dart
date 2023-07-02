import 'package:flavor_dash/widgets/gmap.dart';
import 'package:flavor_dash/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: Stack(
        children: [
          Gmap(),
          Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/logo.svg',
                    width: 30,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(child: LocationSearchBox()),
                ],
              )),
          Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(elevation: 3),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text('Confirm'),
                  ),
                ),
              )),
          Positioned(
            top: 105,
            right: 10,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 3,
                    backgroundColor: Colors.white,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10)),
                child: Icon(
                  Icons.my_location,
                  color: Colors.grey,
                )),
          )
        ],
      ),
    );
  }
}
