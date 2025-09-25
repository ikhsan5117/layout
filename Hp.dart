import 'package:flutter/material.dart';

class kuis1 extends StatelessWidget {
  const kuis1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tugas kuis"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
              Text(
                  "Treaning",
                style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              Text("<🥶>")
                ],
              ),
    );
  }
}