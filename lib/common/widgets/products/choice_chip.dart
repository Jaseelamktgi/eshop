import 'package:eshop/common/widgets/custom_shapes/circular_container.dart';
import 'package:eshop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ChoiceChips extends StatelessWidget {
  const ChoiceChips(
      {super.key, required this.text, required this.selected, this.onSelected});

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = AppHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? Colors.white : null),
        shape: isColor ? CircleBorder() : null,
        labelPadding: isColor ? EdgeInsets.all(0) : null,
        padding: isColor ? EdgeInsets.all(0) : null,
        selectedColor: Colors.red,
        avatar: isColor
            ? CircularContainer(
                width: 50,
                height: 50,
                backgroundColor: AppHelperFunctions.getColor(text)!,
              )
            : null,
        backgroundColor: isColor ? AppHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
