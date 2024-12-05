import 'package:flutter/material.dart';
import '../models/trip.dart';
import '../widgets/trip_item.dart';

class CategoryTripsScreen extends StatefulWidget {
  static const screenRoute = '/categroy-trips';

  final List<Trip> availableTrips;

  CategoryTripsScreen(this.availableTrips);

  @override
  _CategoryTripsScreenState createState() => _CategoryTripsScreenState();
}

class _CategoryTripsScreenState extends State<CategoryTripsScreen> {
  String imageUrl;
  String sup_title;
  String detail;
  String categoryTitle;
  List<Trip> displayTrips;

  @override
  void initState() {
    //...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routeArgument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    categoryTitle = routeArgument['title'];
    sup_title = routeArgument['sup_title'];
    imageUrl = routeArgument['imageUrl'];
    detail = routeArgument['detail'];


    displayTrips = widget.availableTrips.where((trip) {
      return trip.categories.contains(categoryId);
    }).toList();
    super.didChangeDependencies();
  }

  void _removeTrip(String tripId) {
    setState(() {
      displayTrips.removeWhere((trip) => trip.id == tripId);
    });
  }
  Widget buildSectionTitle(BuildContext context, String titleText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topRight,
      child: Text(
        titleText,
        style: Theme.of(context).textTheme.headline5,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

        Container(
              height: 450,
              child: Column(
                children: [
                  Container(
                    height: 260,
                    width: double.infinity,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 10),
                  buildSectionTitle(context, sup_title),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    child: Text(detail),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Column(
                children: List.generate(
                  displayTrips.length,
                      (index) => TripItem(
                    id: displayTrips[index].id,
                    title: displayTrips[index].title,
                    imageUrl: displayTrips[index].imageUrl,
                    duration: displayTrips[index].duration,
                    tripType: displayTrips[index].tripType,
                    season: displayTrips[index].season,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

