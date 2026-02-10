import 'package:flutter/material.dart';
import 'package:flutter_appproyect/components/pregunta_widget.dart';
import 'package:flutter_appproyect/components/respuestas_widget.dart';
import 'package:flutter_appproyect/services/quiz_service.dart';

class QuizPage extends StatefulWidget {
  final String title;
  const QuizPage({super.key, this.title = "Quiz"});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final quizService = QuizService();

  @override
  Widget build(BuildContext context) {
    final pregunta = quizService.preguntaActual;
    final respuestas = pregunta.respuestas;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 30,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 161, 207, 88),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(35, 32, 16, 70),
                    //PreguntaWidget(texto: pregunta.texto,),
                    child: PreguntaWidget(
                      texto: '¿Qué día de la semana es hoy y que día será mañana?',
                    ),
                  ),
                ),
                const Expanded(flex: 1, child: SizedBox()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 15, 10, 15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(6),
                  child: RespuestasWidget(
                    texto: respuestas[0].texto,
                    esCorrecta: respuestas[0].esCorrecta,
                    mostrarResultado: quizService.mostrarResultado,
                    onTap: () {
                      setState(() {
                        quizService.responder(0);
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: RespuestasWidget(
                    texto: respuestas[1].texto,
                    esCorrecta: respuestas[1].esCorrecta,
                    mostrarResultado: quizService.mostrarResultado,
                    onTap: () {
                      setState(() {
                        quizService.responder(1);
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: RespuestasWidget(
                    texto: respuestas[2].texto,
                    esCorrecta: respuestas[2].esCorrecta,
                    mostrarResultado: quizService.mostrarResultado,
                    onTap: () {
                      setState(() {
                        quizService.responder(2);
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(6),
                  child: RespuestasWidget(
                    texto: respuestas[3].texto,
                    esCorrecta: respuestas[3].esCorrecta,
                    mostrarResultado: quizService.mostrarResultado,
                    onTap: () {
                      setState(() {
                        quizService.responder(3);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
