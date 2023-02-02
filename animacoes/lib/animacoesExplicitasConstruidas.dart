import 'package:flutter/material.dart';

class AnimacoesExplicitasContruidas extends StatefulWidget {
  const AnimacoesExplicitasContruidas({super.key});

  @override
  State<AnimacoesExplicitasContruidas> createState() =>
      _AnimacoesExplicitasContruidasState();
}

class _AnimacoesExplicitasContruidasState
    extends State<AnimacoesExplicitasContruidas>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  AnimationStatus? _animationStatus;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    )
      ..repeat()
      ..addStatusListener(
        (status) {
          _animationStatus = status;
        },
      );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        Container(
          width: 300,
          height: 400,
          child: RotationTransition(
            alignment: Alignment.center,
            child: Image.asset('imagens/logo.png'),
            turns: _animationController,
          ),
        ),
        ElevatedButton(
          child: Text('Pressione'),
          onPressed: () {
            if (_animationStatus == AnimationStatus.dismissed) {
              //_animationController.forward();
              _animationController.repeat();
            } else {
              _animationController.reverse();
            }

            /*if (_animationController.isAnimating) {
              _animationController.stop();
            } else {
              _animationController.repeat();
            }*/
          },
        ),
      ]),
    );
  }
}
