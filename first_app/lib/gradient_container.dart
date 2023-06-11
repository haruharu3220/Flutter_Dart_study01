import 'package:flutter/material.dart';

//変数が変更されない事がわかっている場合はfinal型を推奨
final startAlignment = Alignment.topLeft;
final endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple()
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(
          child: Image.asset('assets/images/dice-2.png'),
        ));
  }
}
