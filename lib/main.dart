import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Container_0495",
      home: const MyHomePage(title: 'Container_0495'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 5, color: Colors.red),
            boxShadow: [
              const BoxShadow(
                  color: Colors.blue,
                  offset: Offset(5.0, 5.0),
                  blurRadius: 20.0,
                  spreadRadius: 10.0),
              const BoxShadow(
                  color: Colors.green,
                  offset: Offset(2.0, 5.0),
                  blurRadius: 10.0,
                  spreadRadius: 5.0),
            ],
          ),
          width: 250,
          height: 300,
          child: const Text(
            "Soy un contenedor",
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
          constraints: const BoxConstraints(
            minHeight: 100,
            minWidth: 100,
            maxHeight: double.infinity,
            maxWidth: double.infinity,
          ),
          transform: Matrix4.skew(0.2, -0.2)..rotateZ(0.9),
          transformAlignment: Alignment.center,
        ),
      ),
    );
  }
}
