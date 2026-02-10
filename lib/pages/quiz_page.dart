import 'package:flutter/material.dart';
import 'package:flutter_appproyect/components/pregunta_widget.dart';
import 'package:flutter_appproyect/components/respuestas_widget.dart';
import 'package:flutter_appproyect/services/quiz_service.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  final quizService = QuizService();

  @override
  Widget build(BuildContext context) {

    final pregunta = quizService.preguntaActual;
    final respuestas = pregunta.respuestas;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          PreguntaWidget(texto: pregunta.texto,),

          const SizedBox(height: 24),
          ...List.generate(respuestas.length, (index) {
            return RespuestasWidget(
              texto: respuestas[index],
              esCorrecta: quizService.esCorrecta(index),
              mostrarResultado: quizService.haySeleccion,
              onTap: () {
                setState(() {
                  quizService.responder(index);
                });
              },
            );
          }),
        ],
      ),
    );
  }
}