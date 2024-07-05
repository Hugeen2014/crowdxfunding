import 'package:flutter/material.dart';
import 'package:xfunding/utils/custom_style.dart';
import 'package:xfunding/utils/dimsensions.dart';

class TextLabelsWidget extends StatelessWidget {
  const TextLabelsWidget({Key? key, required this.textLabels}) : super(key: key);

  final String textLabels;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.marginSize * 0.5),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              textLabels,
              style: CustomStyler.categoriesStyle,
            ),
          )
        ],
      ),
    );
  }
}
