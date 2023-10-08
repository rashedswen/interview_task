import 'dart:math' as math;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
                Container(
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  padding: const EdgeInsets.only(
                    bottom: 16,
                  ),
                  // margin: const EdgeInsets.only(bottom: 16),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 12,
                          offset: Offset(0, -8),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 64,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Packages",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        // slide show images
                        SizedBox(
                          height: 200,
                          child: CarouselSlider.builder(
                            itemCount: colors.length,
                            itemBuilder: (context, index, realIndex) {
                              return SizedBox.expand(
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  decoration: BoxDecoration(
                                    color: colors[index],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              );
                            },
                            options: CarouselOptions(
                              height: 200,
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.85,
                              enlargeFactor: 0.15,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 10),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              // onPageChanged: callbackFunction,
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Show All",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 12,
                ),
                Container(
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
                            hintText:
                                "search for physicians, clinics, specialties etc",
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
                                            appointmentModel:
                                                elements[index * 2],
                                          ),
                                        ),
                                        if (index * 2 + 1 < elements.length)
                                          const SizedBox(
                                            width: 16,
                                          ),
                                        if (index * 2 + 1 < elements.length)
                                          Expanded(
                                            child: AppointmentCard(
                                              appointmentModel:
                                                  elements[index * 2 + 1],
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
                ),
                Container(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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

class BadgeDecoration extends Decoration {
  final Color badgeColor;
  final double badgeSize;
  final TextSpan textSpan;

  const BadgeDecoration(
      {required this.badgeColor,
      required this.badgeSize,
      required this.textSpan});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) =>
      _BadgePainter(badgeColor, badgeSize, textSpan);
}

class _BadgePainter extends BoxPainter {
  static const double BASELINE_SHIFT = 1;
  static const double CORNER_RADIUS = 4;
  final Color badgeColor;
  final double badgeSize;
  final TextSpan textSpan;

  _BadgePainter(this.badgeColor, this.badgeSize, this.textSpan);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    canvas.save();
    canvas.translate(offset.dx, offset.dy);
    canvas.drawPath(buildBadgePath(), getBadgePaint());
    // draw text
    final hyp = math.sqrt(badgeSize * badgeSize + badgeSize * badgeSize);
    final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center);
    textPainter.layout(minWidth: hyp, maxWidth: hyp);
    final halfHeight = textPainter.size.height / 2;
    final v = math.sqrt(halfHeight * halfHeight + halfHeight * halfHeight) +
        BASELINE_SHIFT;
    canvas.translate(v, -v);
    canvas.rotate(0.785398); // 45 degrees
    textPainter.paint(canvas, Offset.zero);
    canvas.restore();
  }

  Paint getBadgePaint() => Paint()
    ..isAntiAlias = true
    ..color = badgeColor;

  Path buildBadgePath() => Path.combine(
      PathOperation.difference,
      Path()
        ..addRRect(
          RRect.fromLTRBAndCorners(
            badgeSize,
            badgeSize,
            0,
            0,
            topLeft: const Radius.circular(CORNER_RADIUS),
          ),
        ),
      Path()
        ..moveTo(0, badgeSize)
        ..lineTo(badgeSize, 0)
        ..lineTo(badgeSize, badgeSize)
        ..close());
}
