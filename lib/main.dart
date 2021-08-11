import 'package:flutter/material.dart';

void main() {
  runApp(LogoApp());
}

class LogoApp extends StatefulWidget {
  const LogoApp({Key key}) : super(key: key);

  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      })
      ..addStatusListener((status) => print('$status'));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GrowTransition(
      child: const LogoWidget(),
      animation: animation,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

// class AnimatedLogo extends AnimatedWidget {
//   const AnimatedLogo({
//     Key key,
//     @required Animation<double> animation,
//   }) : super(key: key, listenable: animation);
//
//   @override
//   Widget build(BuildContext context) {
//     final animation = listenable as Animation<double>;
//     return Center(
//       child: Container(
//         margin: const EdgeInsets.symmetric(vertical: 10),
//         height: animation.value,
//         width: animation.value,
//         child: const FlutterLogo(),
//       ),
//     );
//   }
// }

class GrowTransition extends StatelessWidget {
  const GrowTransition(
      {Key key, @required this.child, @required this.animation})
      : super(key: key);

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return SizedBox(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const FlutterLogo(),
    );
  }
}
