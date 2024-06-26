import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:puc_minas/app/core/constants/app_assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.logo)
                .animate()
                .scaleXY(
                  begin: 0,
                  end: 1,
                  duration: 3.seconds,
                )
                .flip(begin: 1, end: 4, duration: 3.seconds, direction: Axis.horizontal, curve: Curves.elasticIn),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: const Text('ENTRAR'),
            ),
          ],
        ),
      ),
    );
  }
}
