import 'package:flutter/material.dart';
import 'package:interview_task/main.dart';
import 'package:interview_task/paint/badge_decoration.dart';

class MedicalProfile extends StatelessWidget {
  const MedicalProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xfff4f4f4),
      ),
      width: double.infinity,
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Medical Profile",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              ...List.generate(colors.length, (index) => index)
                  .map((e) => Expanded(
                      child: Container(
                          height: 100,
                          color: Colors.white,
                          margin: const EdgeInsets.only(right: 16),
                          foregroundDecoration: BadgeDecoration(
                            badgeColor: colors[e],
                            badgeSize: 24,
                            textSpan: const TextSpan(
                              text: "",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ))))
                  .toList()
            ],
          )
        ],
      ),
    );
  }
}
