import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceModle {
  final String image;
  final String name;
  final String number;
  final String address;
  final String description;
  PlaceModle(
      {required this.image,
      required this.name,
      required this.number,
      required this.address,
      required this.description});
}
