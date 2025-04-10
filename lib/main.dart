import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          spacing: 15,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  "Wilkommen zur App!",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Image.network(
                "https://picsum.photos/800/600",
                fit: BoxFit.cover,
                // width: double.infinity,
                // height: double.infinity,
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  "Wie folgt können Sie die Informationen entnehmen...",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
