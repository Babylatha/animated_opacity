import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedOpacityDemo(),
    );
  }
}

class AnimatedOpacityDemo extends StatefulWidget {
  const AnimatedOpacityDemo({super.key});

  @override
  AnimatedOpacityDemoState createState() => AnimatedOpacityDemoState();
}

class AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  var _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(" AnimatedOpacity "),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _opacity = _opacity == 0.0 ? 1.0 : 0.0;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.blue,
                ),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.bounceIn,
                  opacity: _opacity,
                  child: Image.asset(
                    "assets/images/burger.jpg",
                    scale: 10,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("click on the container"),
          ],
        ),
      ),
    );
  }
}
