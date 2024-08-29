import 'package:flutter/material.dart';
import 'package:tune/models/tune_model.dart';
import 'package:tune/utils/assets.dart';
import 'package:tune/widgets/tune_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<TuneModel> tuneList = const [
    TuneModel(
      sound: Assets.note1,
      color: Colors.red,
    ),
    TuneModel(
      sound: Assets.note2,
      color: Colors.orange,
    ),
    TuneModel(
      sound: Assets.note3,
      color: Colors.yellow,
    ),
    TuneModel(
      sound: Assets.note4,
      color: Colors.green,
    ),
    TuneModel(
      sound: Assets.note5,
      color: Colors.greenAccent,
    ),
    TuneModel(
      sound: Assets.note6,
      color: Colors.blue,
    ),
    TuneModel(
      sound: Assets.note7,
      color: Colors.purple,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TuneApp'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff253239),
      ),
      body: Column(
        children: tuneList
            .map(
              (e) => TuneItem(tuneModel: e),
            )
            .toList(),
      ),
    );
  }
}
