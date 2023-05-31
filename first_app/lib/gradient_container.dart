import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

//変数が変更されない事がわかっている場合はfinal型を推奨
final startAlignment = Alignment.topLeft;
final endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [Colors.deepPurple, Colors.greenAccent],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(
          child: StyledText('Hello world'),
        ));
  }
}
