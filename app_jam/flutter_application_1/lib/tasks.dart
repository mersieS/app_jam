import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          TaskManager(
                            color: Color(0xff4285f4),
                            ders: 'Flutter',
                            modulSayisi: '23',
                          ),
                          TaskManager(
                            color: Color(0xff34a853),
                            ders: 'Girişimcilik',
                            modulSayisi: '72',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          TaskManager(
                            color: Color(0xffe94235),
                            ders: 'Unity',
                            modulSayisi: '45',
                          ),
                          TaskManager(
                            color: Color(0xfffabb05),
                            ders: 'İngilizce',
                            modulSayisi: '32',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
  }
}

class TaskManager extends StatelessWidget {
  String modulSayisi;
  String ders;
  Color color;

  TaskManager({
    required this.ders,
    required this.color,
    required this.modulSayisi,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color.withOpacity(0.75),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          width: Get.width,
          height: 110,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/background.png',
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          modulSayisi,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: 'VarelaRound',
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          ders,
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontFamily: 'VarelaRound',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}