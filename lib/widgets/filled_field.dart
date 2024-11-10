import 'package:flutter/material.dart';

class FilledField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController? controller;

  const FilledField({
    super.key,
    required this.label,
    required this.hint,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          style: TextStyle(
            fontSize: 12,
          ),
          decoration: InputDecoration(
            filled: true,
            hintText: hint,
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          ),
        ),
      ],
    );
  }
}
