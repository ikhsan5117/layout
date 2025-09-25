import 'package:flutter/material.dart';

class Layout2 extends StatelessWidget {
  const Layout2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas Layout 2"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.lightGreen],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            )
        ),
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
        children: [
        
        Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.25),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                offset: Offset(2, 4)
              )
            ]
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
              "Lets  Explore Our Diversity",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 5),
            Center(
            child: Image.asset(
              "Gambar/001.png", width: 350, height: 250,
              ),
            ),
            ],
            ),
          ),
        ),
        Positioned(right: -160, bottom: -15,
        child: Image.asset("Gambar/02.png",
         width: 300,
         height: 300,
          ),
        ),
       ]
      ),
     ),
    ),
   );
  }
}