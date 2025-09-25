import 'package:flutter/material.dart';

class kuis1 extends StatelessWidget {
  const kuis1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tugas kuis"),
      ),
      body: Column(
        children: [  
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
              Text(
                  "Treaning",
                style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              Text("<🥶>"),
                ],
              ),


        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
              Text(
                  "your Program",
                style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              Text("Details>",style: TextStyle(color: Colors.blue),),
                ],
              ),
              Container(
              width: 255,
              height: 150,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:[ Colors.purple, Colors.purpleAccent])
              ),
            ),
          ],
      ),
    );
  }
}