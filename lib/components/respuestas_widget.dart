import 'package:flutter/material.dart';
import 'package:flutter_appproyect/core/text_styles.dart';

class RespuestasWidget extends StatelessWidget {
  final String texto;
  final bool esCorrecta;
  final bool mostrarResultado;
  final VoidCallback onTap;

  const RespuestasWidget({
    super.key,
    required this.texto,
    required this.esCorrecta,
    required this.mostrarResultado,
    required this.onTap,
  });

  Color _backgroundColor() {
    // Antes de responder
    if (!mostrarResultado) {
      return const Color.fromARGB(255, 241, 223, 178);
    }

    // Después de responder
    if (esCorrecta) {
      return const Color.fromARGB(255, 129, 214, 132);
    } else {
      return const Color.fromARGB(255, 238, 132, 124);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: _backgroundColor(),
          padding: const EdgeInsets.all(16),
        ),
        onPressed: onTap,
        child: Text(
          texto,
          style: TextStylesAnswer.respuesta,
        ),
      ),
    );
  }
}