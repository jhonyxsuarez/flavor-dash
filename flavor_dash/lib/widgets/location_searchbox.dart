import 'package:flutter/material.dart';

class LocationSearchBox extends StatelessWidget {
  const LocationSearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 3,
      borderRadius: BorderRadius.circular(15),
      child: TextField(
        decoration: InputDecoration(
            filled: false,
            hintText: 'Enter your location',
            suffixIcon: Icon(Icons.search),
            contentPadding:
                const EdgeInsets.only(left: 20, bottom: 5, right: 5),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
