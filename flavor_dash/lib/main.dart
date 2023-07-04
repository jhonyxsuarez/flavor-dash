import 'package:flavor_dash/blocs/geolocation/geolocation_bloc.dart';
import 'package:flavor_dash/repositories/geolocation/geolocation_repository.dart';
import 'package:flavor_dash/screens/location/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/config.dart';

void main(List<String> args) {
  runApp(const FlavorDash());
}

///Main App
class FlavorDash extends StatelessWidget {
  const FlavorDash({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<GeolocationRepository>(
            create: (_) => GeolocationRepository())
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => GeolocationBloc(
                  geolocationRepository: context.read<GeolocationRepository>())
                ..add(LoadingGeolocation()))
        ],
        child: MaterialApp(
          title: 'Flavor Dash',
          theme: theme(),
          onGenerateRoute: AppRounter.onGenerateRoute,
          initialRoute: LocationScreen.routeName,
        ),
      ),
    );
  }
}
