import 'package:flutter/material.dart';

class Container2 extends StatefulWidget {
  final double width;

  const Container2({
    required this.width,
    super.key,
  });

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: widget.width * 0.2,
      ),
      color: Colors.red,
      child: Text('oi'),
    );
  }
}
