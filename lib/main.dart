// Задание 1.
// https://pub.dev/packages/flutter_svg из pub.dev.
// Добавьте в assets svg изображение и выведите его с помощью этого виджета.
// С помощью виджета загрузите изображение из сети и отобразите это изображение на экране.
//

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MainApp());
}

final List<String> imgList = [
  'build/flutter_assets/skillbox.svg',
  'build/flutter_assets/Google-flutter-logo.svg'
];

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Flutter Work"),
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(height: 200.0),
                items: imgList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SvgPicture.asset(i));
                    },
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
