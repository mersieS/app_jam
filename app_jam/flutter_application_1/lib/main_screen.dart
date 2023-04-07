import 'package:flutter/material.dart';
import 'package:flutter_application_1/circular_percents.dart';
import 'package:flutter_application_1/corsuera.dart';
import 'package:flutter_application_1/tasks.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'my_header.dart';
import 'package:appbar_animated/appbar_animated.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.notes,
        ),
        backgroundColor: Color(0xffe94235).withOpacity(0.9),
      ),
      backgroundColor: Colors.white,
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar: ColorBuilder(Colors.transparent, Colors.blue),
        textColorAppBar: ColorBuilder(Colors.white),
        appBarBuilder: _appBar,
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyHeader(
                  image: 'assets/koy.png',
                  textTop: 'Hoşgeldin',
                  textBottom: 'Emrecan',
                  offset: 0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Görevlerim',
                      style: TextStyle(
                        fontFamily: 'VarelaRound',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Tasks(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'İlerlemem',
                      style: TextStyle(
                        fontFamily: 'VarelaRound',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              CircularPercents(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Coursera Yardımlaşma Platformu',
                      style: TextStyle(
                        fontFamily: 'VarelaRound',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Coursera(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Yapılacaklar Listem',
                      style: TextStyle(
                        fontFamily: 'VarelaRound',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white),
                  width: 250,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'YAPILACAKLAR LİSTESİ',
                          style: TextStyle(
                              fontFamily: 'VarelaRound', color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [],
                      )
                    ],
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

  Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
    return AppBar(
      backgroundColor: colorAnimated.background,
      elevation: 0,
      title: Text(
        "Oyun ve Uygulama Akademisi",
        style: TextStyle(
          color: colorAnimated.color,
          fontSize: 20
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: colorAnimated.color,
          ),
        ),
      ],
    );
  }

