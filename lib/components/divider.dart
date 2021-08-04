import 'package:flutter/material.dart';

class VerticalPadedDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Divider(),
    );
  }
}
