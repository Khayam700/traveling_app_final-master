import 'package:flutter/material.dart';
import '../screens/filters_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  Widget buildListTile(String title, IconData icon, Function onTapLink) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Color(0xFFB57EDC),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'ElMessiri',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTapLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Theme.of(context).accentColor,
            child: Text(
              'حول المملكة',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(height: 20),
          buildListTile(
            'المناطق',
            Icons.public,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTile(
            'الانشطة السياحية',
            Icons.filter_list,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FiltersScreen.screenRoute);
            },
          ),
        ],
      ),
    );
  }
}
