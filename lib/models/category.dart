import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final String sup_title;

  final String detail;
  final String imageUrl;

  const Category(
      {@required this.id,@required this.sup_title,@required this.detail, @required this.title, @required this.imageUrl});
}
