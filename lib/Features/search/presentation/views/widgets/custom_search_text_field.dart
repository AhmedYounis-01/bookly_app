import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            hintText: "Search",
            suffixIcon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
          ),
        )
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
