import 'package:flutter/material.dart';
import 'package:interview_task/model/appointment_model.dart';
import 'package:interview_task/widgets/book_appointment_section.dart';
import 'package:interview_task/widgets/medical_profile.dart';
import 'package:interview_task/widgets/packages_section.dart';

void main() {
  runApp(const MainApp());
}

const List<Color> colors = [
  Color(0xfff6a4c6),
  Color(0xff1c164f),
  Color(0xff47bcd0),
];

const List<AppointmentModel> elements = [
  AppointmentModel(
      title: "Online",
      image: "assets/images/athir_icon.png",
      color: Color(0xff85c6c7)),
  AppointmentModel(
    title: "Walkin",
    image: "assets/images/athir_icon.png",
    color: Color(0xff71b7d9),
  ),
  AppointmentModel(
    title: "Emergency",
    image: "assets/images/athir_icon.png",
    color: Color(0xffd97ea3),
  ),
  AppointmentModel(
    title: "Home Visit",
    image: "assets/images/athir_icon.png",
    color: Color(0xffedca86),
  ),
];

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    int numberOfElements = elements.length;
    int maxElementsPerRow = 2;
    int numberOfRows = (numberOfElements / maxElementsPerRow).ceil();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Image.asset(
            'assets/images/athir_icon.png',
            width: 100,
            height: 100,
          ),
          centerTitle: false,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: const Color(0xfff4f4f4),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PackagesSection(),
                const SizedBox(
                  width: double.infinity,
                  height: 12,
                ),
                BookAppointmentSection(numberOfRows: numberOfRows),
                const MedicalProfile()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
