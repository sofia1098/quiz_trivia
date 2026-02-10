import 'package:flutter/material.dart';
import 'package:flutter_appproyect/core/app_color.dart';
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

  Color backgroundColor() {
    // Antes de responder
    if (!mostrarResultado) {
      return AppColor.backgroundCrema;
    }

    // Después de responder
    if (esCorrecta) {
      return AppColor.backgroundVerde;
    } else {
      return AppColor.titulo;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 238, 217, 161),
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ), 
          child: Text('Respuesta', style: TextStyles.respuesta
        ),
      ),
      )
    );
  }
}