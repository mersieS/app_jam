import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercents extends StatefulWidget {
  const CircularPercents({
    super.key,
  });

  @override
  State<CircularPercents> createState() => _CircularPercentsState();
}

class _CircularPercentsState extends State<CircularPercents> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 7.0,
                  animation: true,
                  percent: 0.65,
                  center: Text(
                    "65.0%",
                    style: TextStyle(
                        fontFamily: 'VarelaRound', fontSize: 17.0),
                  ),
                  footer: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Flutter",
                      style: TextStyle(
                          fontFamily: 'VarelaRound', fontSize: 17.0),
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Color(0xff4285f4),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 7.0,
                  animation: true,
                  percent: 0.55,
                  center: Text(
                    "55.0%",
                    style: TextStyle(
                        fontFamily: 'VarelaRound', fontSize: 17.0),
                  ),
                  footer: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Girişimcilik",
                      style: TextStyle(
                          fontFamily: 'VarelaRound', fontSize: 17.0),
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Color(0xff34a853),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 7.0,
                  animation: true,
                  percent: 0.1,
                  center: Text(
                    "70.0%",
                    style: TextStyle(
                        fontFamily: 'VarelaRound', fontSize: 17.0),
                  ),
                  footer: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Unity",
                      style: TextStyle(
                          fontFamily: 'VarelaRound', fontSize: 17.0),
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Color(0xffe94235),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 7.0,
                  animation: true,
                  percent: 0.25,
                  center: Text(
                    "25.0%",
                    style: TextStyle(
                        fontFamily: 'VarelaRound', fontSize: 17.0),
                  ),
                  footer: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "İngilizce",
                      style: TextStyle(
                          fontFamily: 'VarelaRound', fontSize: 17.0),
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Color(0xfffabb05),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}