import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tune/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({
    super.key,
    required this.tuneModel,
  });
  final TuneModel tuneModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () async {
        final player = AudioPlayer();
        await player.play(AssetSource(tuneModel.sound));
      },
      child: Container(
        color: tuneModel.color,
      ),
    ));
  }
}
