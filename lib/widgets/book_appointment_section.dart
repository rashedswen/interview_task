import 'package:flutter/material.dart';
import 'package:interview_task/main.dart';
import 'package:interview_task/widgets/appointment_card.dart';

class BookAppointmentSection extends StatelessWidget {
  const BookAppointmentSection({
    super.key,
    required this.numberOfRows,
  });

  final int numberOfRows;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(
        color: Color(0xfff4f4f4),
      ),
      child: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 16,
          bottom: 16,
        ),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: const BoxDecoration(
          color: Color(0xfff4f4f4),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 12,
              offset: Offset(0, -8),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Book your appointment",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Stay health and take control of your health! Book an appointment with a team of experienced health practitioners for personalized, comprehensive care.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "search for physicians, clinics, specialties etc",
                hintStyle: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 148, 196, 200),
                ),
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...List.generate(
                    numberOfRows,
                    (index) => Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: AppointmentCard(
                                appointmentModel: elements[index * 2],
                              ),
                            ),
                            if (index * 2 + 1 < elements.length)
                              const SizedBox(
                                width: 16,
                              ),
                            if (index * 2 + 1 < elements.length)
                              Expanded(
                                child: AppointmentCard(
                                  appointmentModel: elements[index * 2 + 1],
                                ),
                              ),
                          ],
                        ),
                        if (index != numberOfRows - 1)
                          const SizedBox(
                            height: 16,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
