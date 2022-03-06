import 'package:flutter/material.dart';
import '../../widgets/custom_text.dart';

class FacultyPage extends StatelessWidget {
  const FacultyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(
        text: "Faculty Content Here",
        size: 16,
        color: Colors.black,
        weight: FontWeight.normal,
      ),
    );
  }
}
