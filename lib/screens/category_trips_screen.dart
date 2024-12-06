import 'package:flutter/material.dart';
import 'package:traveling_app/app_data.dart';
import 'package:traveling_app/widgets/category_item.dart';
import '../models/category.dart';
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
  dynamic is_active;
  List<Trip> displayTrips;
  List<dynamic> selectedCategories;
  @override
  void initState() {
    //...
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final routeArgument =
        ModalRoute.of(context).settings.arguments as Map<dynamic, dynamic>;
    final categoryId = routeArgument['id'];
    categoryTitle = routeArgument['title'];
    sup_title = routeArgument['sup_title'];
    imageUrl = routeArgument['imageUrl'];
    is_active = routeArgument['is_active'] ;

    detail = routeArgument['detail'];

    final idsToSearch = sup_title;
     selectedCategories = idsToSearch.isNotEmpty
        ? Categories_data.where((category) => idsToSearch.split(',').contains(category.id)).toList()
        : [];
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
    print(is_active);
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: is_active?
      GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: selectedCategories.map(
              (categoryData) => CategoryItem(

              categoryData.id,
              categoryData.title,
              categoryData.imageUrl,
              categoryData.sup_title,
              categoryData.detail,
              false

          ),
        ).toList(),
      )

          :
      SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height: 450,
              child: Column(
                children: [
                  Container(
                    height: 240,
                    width: double.infinity,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5),
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
      )
    );
  }
}

