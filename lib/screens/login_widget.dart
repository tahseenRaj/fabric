
import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final String title;
  final String image;
  final bool visible;
  final void Function() buttonMethod;
  const CustomIconButton(
      {required this.title,
      required this.image,
      required this.visible,
      required this.buttonMethod,
      super.key});

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: IconButton(
        onPressed: () {
          widget.buttonMethod;
        },
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Image(
                image: AssetImage('assets/images/${widget.image}.png'),
                color: const Color(0xFF9E9E9E),
                width: 30,
              ),
            ),
            const Spacer(),
            Text(
              widget.title,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
