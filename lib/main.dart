import 'package:flutter/material.dart';
import 'package:flutter_custom_pain/UI/custom_AppBar.dart';
import 'package:flutter_custom_pain/model/painter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController appBarController = TextEditingController();
  Painter painter = Painter("");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                appBarController: appBarController,
              ),
              const SizedBox(height: 50),
              Container(
                height: 450,
                width: 300,
                /*  color: Colors.blue, */
                child: CustomPaint(
                  painter: painter,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 190, 140, 207),
          onPressed: () {
            String figura = appBarController.text;
            setState(() {
              painter = Painter(figura);
            });
          },
          child: const Icon(Icons.brush, color: Colors.white,),
        ),
      ),
    );
  }
}
