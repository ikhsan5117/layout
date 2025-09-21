import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHp(),
  ));
}

class MyHp extends StatelessWidget {
  const MyHp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Good morning, Alex",
                softWrap: true,
                style: TextStyle(
                  fontSize: 32, // agak dikecilin biar pas di HP
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2),

              // Search bar sederhana
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Color.fromARGB(255, 15, 11, 11), size: 24),
                    Icon(Icons.show_chart, color: Color.fromARGB(255, 32, 168, 241), size: 32),
                    SizedBox(width: 6, height: 6,),
                    Text(
                      "Search...",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
