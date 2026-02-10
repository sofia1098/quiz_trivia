import 'package:flutter/material.dart';
import 'package:flutter_appproyect/core/app_color.dart';
import 'package:flutter_appproyect/core/text_styles.dart';

class PreguntaWidget extends StatefulWidget {
  final String texto;

  const PreguntaWidget({super.key, required this.texto});

  @override
  State<PreguntaWidget> createState() => _PreguntaWidgetState();
}

class _PreguntaWidgetState extends State<PreguntaWidget> {
  int _charCount = 0;

  @override
  void initState() {
    super.initState();
    _animateText();
  }

  Future<void> _animateText() async {
    for (int i = 0; i <= widget.texto.length; i++) {
      await Future.delayed(const Duration(milliseconds: 40));
      if (!mounted) return;
      setState(() => _charCount = i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.texto.substring(0, _charCount),
      style: const TextStyle(
        fontSize: 20,
        color: AppColor.oscuro,
        inherit: false,
      ),
    );
  }
}
