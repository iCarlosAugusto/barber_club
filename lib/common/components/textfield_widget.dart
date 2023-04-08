import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget(
      {super.key,
      this.label,
      this.hintText,
      this.suffixIcon,
      this.controller,
      this.validator,
      this.keyboardType,
      this.margin,
      this.inputFormatters,
      this.initialValue,
      this.maxLines,
      this.minLines,
      this.maxLength
    });

  final String? label;
  final String? hintText;
  final Icon? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final EdgeInsets? margin;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        initialValue: initialValue,
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        style: const TextStyle(color: Color(0xFF95A1AC)),
        minLines: minLines,
        maxLines: maxLines,
        maxLength: maxLength,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: label,
          hintText: hintText,
        ),
      ),
    );
  }
}
