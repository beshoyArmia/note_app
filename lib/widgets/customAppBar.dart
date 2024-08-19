import 'package:flutter/material.dart';
import 'package:note_app/widgets/customSearchButton.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
        ),
        Spacer(
          flex: 10,
        ),
        CustomSearchButton(),
      ],
    );
  }
}
