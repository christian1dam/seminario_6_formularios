import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        const SizedBox(height: 250),
        Stack(
          children: [
            const PurpleBox(),
            _HeaderIcon(),
            this.child,
          ],
        ),
      ],
    ));
  }

  SafeArea _HeaderIcon() {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Icon(
          Icons.person_pin,
          color: Colors.white,
          weight: 250,
        ),
      ),
    );
  }
}

class _Bubble extends StatelessWidget {
  const _Bubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}

class PurpleBox extends StatelessWidget {
  const PurpleBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: _purpleBackground(),
      child: const Stack(
        children: [
          Positioned(top: 90, left: 30, child: _Bubble()),
          Positioned(top: -40, right: -30, child: _Bubble()),
          Positioned(bottom: -50, right: -30, child: _Bubble()),
          Positioned(bottom: 120, right: 20, child: _Bubble()),
          Positioned(bottom: -50, left: -20, child: _Bubble()),
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() {
    return const BoxDecoration(
        gradient: LinearGradient(colors: [
      Color.fromRGBO(63, 63, 158, 1),
      Color.fromRGBO(90, 70, 178, 1)
    ]));
  }
}