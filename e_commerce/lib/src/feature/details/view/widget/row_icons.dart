import 'package:flutter/material.dart';

class RowIcons extends StatelessWidget {
  const RowIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
          color: Colors.red,
        ),
        SizedBox(
          width: 8,
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.share))
      ],
    );
  }
}
