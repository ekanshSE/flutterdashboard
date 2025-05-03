import 'package:flutter/material.dart';

class LabeledPlaceholder extends StatelessWidget {
  final String label;
  final double height;
  final double? width;

  const LabeledPlaceholder({
    super.key,
    required this.label,
    required this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}