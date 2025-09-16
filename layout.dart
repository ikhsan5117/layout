import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Mytask());
}

class Mytask extends StatelessWidget {
  const Mytask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dashboard Ikhsan",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        fontFamily: "Arial",
      ),
      home: const PhoneFrame(),
    );
  }
}

/// Membungkus dashboard di dalam mockup HP
class PhoneFrame extends StatelessWidget {
  const PhoneFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], 
      body: Center(
        child: Container(
          width: 360, 
          height: 720, 
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 30,
                offset: const Offset(0, 10),
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: const DashboardPage(),
          ),
        ),
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], 
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Good morning, Ikhsan",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.search, color: Colors.grey, size: 25),
                ],
              ),

              const SizedBox(height: 20),

              // Earnings + Stats
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(14),
                      height: 160, 
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue.shade600, Colors.blue.shade400],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.show_chart, color: Colors.white, size: 32),
                          SizedBox(height: 8),
                          Text(
                            "Earnings",
                            style: TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "\$8,350",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "+10% since last month",
                            style: TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  // Kolom Rank + Projects 
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        _statCard("98", "Rank", "In top 30%"),
                        const SizedBox(height: 5),
                        _statCard("32", "Projects", "8 this month",
                            tags: ["mobile app", "branding"]),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _statCard(String value, String title, String subtitle,
    {List<String>? tags}) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w600)),
                Text(subtitle,
                    style: const TextStyle(fontSize: 8, color: Colors.grey)),
              ],
            ),
          ],
        ),
        if (tags != null) ...[
          const SizedBox(height: 2),
          Wrap(
            spacing: 4,
            children: tags
                .map((tag) => Chip(
                      label: Text(tag, style: const TextStyle(fontSize: 7)),
                      backgroundColor: Colors.grey.shade200,
                      padding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ))
                .toList(),
          ),
        ]
      ],
    ),
  );
}

