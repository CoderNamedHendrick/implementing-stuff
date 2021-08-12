import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Page1(),
  ));
}

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).push(_createRoute()),
          child: const Text('Go!'),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var curve = Curves.ease;
        var revCurve = Curves.easeOutCubic;
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        // final tween =
        //     Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        // final offsetAnimation = animation.drive(tween);

        final tween = Tween(begin: begin, end: end);
        final curvedAnimation = CurvedAnimation(
            parent: animation, curve: curve, reverseCurve: revCurve);
        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Page 2'),
      ),
    );
  }
}
