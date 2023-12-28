import 'package:flutter/material.dart';

class Allcustomdropdownbuttoms extends StatelessWidget {
  final List<String> values;
  final double width;

  const Allcustomdropdownbuttoms(
      {super.key, required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButton(
          value: values.first,
          onChanged: (__) {},
          items: values.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(
                e,
                textAlign: TextAlign.left,
              ),
            );
          }).toList(),
          underline: Container(),
          dropdownColor: Color.fromARGB(249, 0, 0, 0),
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500)),
    );
  }
}
