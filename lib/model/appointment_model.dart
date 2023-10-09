import 'package:flutter/material.dart';

class AppointmentModel {
  final String title;
  final String image;
  final Color color;

  const AppointmentModel({
    required this.title,
    required this.image,
    this.color = Colors.red,
  });
}
