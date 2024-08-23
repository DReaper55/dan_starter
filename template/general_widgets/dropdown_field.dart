/*
import 'package:flutter/material.dart';

class DropDownField<T> extends StatelessWidget {
  const DropDownField({
    super.key,
    required this.values,
    this.onChanged,
    this.label,
    this.currentValue,
    this.width,
  });
  final List<T> values;
  final void Function(T?)? onChanged;
  final String? label;
  final T? currentValue;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: Styles.w400(
              size: 14,
              color: MyAppColors.black,
            ),
          ),
        if (label != null) const SizedBox(height: 8),
        DropdownButtonFormField<T>(
          style: Styles.w400(
            size: 14,
            color: MyAppColors.black,
          ),
          icon: const Icon(Icons.keyboard_arrow_down),
          borderRadius: BorderRadius.circular(12),
          decoration: const InputDecoration(
            border: InputBorder.none
          ),
          value: currentValue ?? values.first,
          autovalidateMode: AutovalidateMode.always,
          items: values
              .map(
                (e) {
              String text = e is String ? e : "$e";

              if(e is Map){
                text = e.values.first as String;
              }

              return DropdownMenuItem<T>(
                value: e,
                child: Text(text),
              );
            },
          )
              .toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
*/
