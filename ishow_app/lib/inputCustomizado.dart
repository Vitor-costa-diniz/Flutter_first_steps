import 'package:flutter/material.dart';

class InputCustomizado extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData iconData;
  final Color? colors;

  const InputCustomizado({
    super.key,
    required this.hint,
    this.obscure = false,
    this.iconData = Icons.person,
    this.colors = const Color(0xFF757575),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          icon: Icon(
            iconData,
            color: colors,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
