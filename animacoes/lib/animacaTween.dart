import 'package:flutter/material.dart';

class AnimacaoTween extends StatefulWidget {
  const AnimacaoTween({super.key});

  @override
  State<AnimacaoTween> createState() => _AnimacaoTweenState();
}

class _AnimacaoTweenState extends State<AnimacaoTween> {
  static final colorsTween =
      ColorTween(begin: Colors.white, end: Colors.orange);
  @override
  Widget build(BuildContext context) {
    return Center(
      /*
      child: TweenAnimationBuilder(
        duration: Duration(seconds: 2),
        tween: Tween<double>(begin: 0, end: 6.28),
        builder: (BuildContext context, double angulo, Widget? child) {
          return Transform.rotate(
            angle: angulo,
            child: Image.asset('imagens/logo.png'),
          );
        },
      ),*/

      /*
      child: TweenAnimationBuilder(
        duration: Duration(seconds: 1),
        tween: Tween<double>(begin: 50, end: 180),
        builder: (BuildContext context, double largura, Widget? child) {
          return Container(
            color: Colors.green,
            width: largura,
            height: 60,
          );
        },
      ),*/

      child: TweenAnimationBuilder(
        duration: Duration(seconds: 2),
        tween: colorsTween,
        child: Image.asset('imagens/estrelas.jpg'),
        builder: (BuildContext context, Color? cor, Widget? child) {
          return ColorFiltered(
            colorFilter: ColorFilter.mode(cor as Color, BlendMode.overlay),
            child: child,
          );
        },
      ),
    );
  }
}
