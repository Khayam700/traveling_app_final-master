import 'package:flutter/material.dart';
import './app_data.dart';
import 'package:traveling_app/screens/categories_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './screens/filters_screen.dart';
import './screens/tabs_screen.dart';
import './screens/trip_detail_screen.dart';
import './screens/category_trips_screen.dart';
import './models/trip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'summer': false,
    'winter': false,
    'family': false,
  };

  List<Trip> _availableTrips = Trips_data;
  List<Trip> _favoriteTrips = [];

  void _changeFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableTrips = Trips_data.where((trip) {
        if (_filters['summer'] == true && trip.isInSummer != true) {
          return false;
        }
        if (_filters['winter'] == true && trip.isInWinter != true) {
          return false;
        }
        if (_filters['family'] == true && trip.isForFamilies != true) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _manageFavorite(String tripId) {
    final existingIndex =
        _favoriteTrips.indexWhere((trip) => trip.id == tripId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteTrips.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteTrips.add(
          Trips_data.firstWhere((trip) => trip.id == tripId),
        );
      });
    }
  }

  bool _isFovarite(String id) {
    return _favoriteTrips.any((trip) => trip.id == id);
  }
  MaterialColor createMaterialColor(Color color) {
    Map<int, Color> colorSwatch = {
      50:  _tintColor(color, 0.9),
      100: _tintColor(color, 0.8),
      200: _tintColor(color, 0.6),
      300: _tintColor(color, 0.4),
      400: _tintColor(color, 0.2),
      500: color,
      600: _shadeColor(color, 0.1),
      700: _shadeColor(color, 0.2),
      800: _shadeColor(color, 0.3),
      900: _shadeColor(color, 0.4),
    };
    return MaterialColor(color.value, colorSwatch);
  }

  Color _tintColor(Color color, double factor) {
    return Color.fromRGBO(
      color.red + ((255 - color.red) * factor).round(),
      color.green + ((255 - color.green) * factor).round(),
      color.blue + ((255 - color.blue) * factor).round(),
      1,
    );
  }

  Color _shadeColor(Color color, double factor) {
    return Color.fromRGBO(
      (color.red * (1 - factor)).round(),
      (color.green * (1 - factor)).round(),
      (color.blue * (1 - factor)).round(),
      1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'), // English, no country code
      ],
      title: 'Travel App',
      theme: ThemeData(
          primarySwatch:createMaterialColor(Color(0xFFB57EDC)),
          accentColor: Color(0xFFB57EDC),
          fontFamily: 'ElMessiri',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline5: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                ),
                headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'ElMessiri',
                  fontWeight: FontWeight.bold,
                ),
              )),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favoriteTrips),
        CategoryTripsScreen.screenRoute: (ctx) =>
            CategoryTripsScreen(_availableTrips),
        TripDetailScreen.screenRoute: (ctx) =>
            TripDetailScreen(_manageFavorite, _isFovarite),
        FiltersScreen.screenRoute: (ctx) =>
            FiltersScreen(_filters, _changeFilters),
      },
    );
  }
}
