import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Gmap extends StatelessWidget {
  const Gmap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: GoogleMap(
          zoomControlsEnabled: false,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          initialCameraPosition:
              CameraPosition(target: LatLng(12, 10), zoom: 5)),
    );
  }
}
