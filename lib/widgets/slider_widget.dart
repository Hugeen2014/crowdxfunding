import 'package:flutter/material.dart';
import 'package:xfunding/utils/custom_color.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double value = 70.0;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
        data: SliderThemeData(
          trackHeight: 2,
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
          overlayShape: SliderComponentShape.noThumb,
        ),
        child: Slider(
          activeColor: CustomColor.primaryColor,
          inactiveColor: CustomColor.gray,
          value: value,
          min: 0,
          max: 100,
          label: value.round().toString(),
          onChanged: (value) => setState(() {
            this.value = value;
          }),
        ));
  }
}
