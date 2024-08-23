/*
import 'package:flutter/material.dart';

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({
    super.key,
    this.label,
    required this.controller,
    this.validateFunction,
    this.minLines,
    this.minLength,
    this.hintText,
    this.onChanged,
    this.currentValue,
  });
  final String? label;
  final String? hintText, currentValue;
  final int? minLines;
  final int? minLength;
  final TextEditingController controller;
  final String? Function(String?)? validateFunction;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: textTheme.headlineMedium,
          ),
        if (label != null) const SizedBox(height: 8),
        TextFormField(
          initialValue: currentValue,
          controller: controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validateFunction,
          onChanged: onChanged,
          maxLines: minLines ?? 5,
          maxLength: minLength ?? 300,
          textAlign: TextAlign.left,
          scrollPadding: const EdgeInsets.only(left: 100),
          decoration: Helpers.inputdecor(
            hintText: hintText,
            // contentPadding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
*/
