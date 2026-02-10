import 'package:flutter/material.dart';
import 'package:flutter_appproyect/core/text_styles.dart';

class PreguntaWidget extends StatelessWidget {
  final String texto;

  const PreguntaWidget({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/image/pregunta_globo.png',
          height: 180,
          fit: BoxFit.contain,
        ),

        const SizedBox(height: 16),
        Text(
          texto,
          textAlign: TextAlign.center,
          style: TextStylesAnswer.pregunta,
        ),
      ],
    );
  }
}