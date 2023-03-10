import 'package:flutter/material.dart';
import 'package:quiz3/layout_attribute_selector.dart';

class BaselineLayoutAttributes extends StatefulWidget {
  BaselineLayoutAttributes({required this.onUpdateCrossAxisAlignment});

  final ValueChanged<int> onUpdateCrossAxisAlignment;

  @override
  State<StatefulWidget> createState() => BaselineLayoutAttributesState();
}

class BaselineLayoutAttributesState extends State<BaselineLayoutAttributes> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: LayoutAttributeSelector(
            title: 'Cross Axis Alignment',
            values: [
              'baseline',
              'start',
              'end',
              'center',
              //'stretch',
            ],
            onChange: widget.onUpdateCrossAxisAlignment,
          ),
        ),
      ],
    );
  }
}