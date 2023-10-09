import 'package:flutter/material.dart';
import 'package:interview_task/main.dart';
import 'package:interview_task/model/appointment_model.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    super.key,
    required this.appointmentModel,
  });

  final AppointmentModel appointmentModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 48,
      height: MediaQuery.of(context).size.width / 2 - 48,
      decoration: BoxDecoration(
        color: appointmentModel.color,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      child: FittedBox(
        child: Column(
          children: [
            Image.asset(
              appointmentModel.image,
              width: 100,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              appointmentModel.title,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
