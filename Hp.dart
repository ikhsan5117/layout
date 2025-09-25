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
              width: 350,
              height: 185,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:[ Colors.purple, Colors.purpleAccent]
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10), topLeft: Radius.circular(10), topRight: Radius.circular(120))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, 
                    children: [Text("Next work out", style: TextStyle(color: Colors.white),)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, 
                    children: [Text("Lets toning", style: TextStyle(color: Colors.white, fontSize: 20), )],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start, 
                    children: [Text("And Glutes Workout", style: TextStyle(color: Colors.white, fontSize: 25), )],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end, 
                    children: [Text("⏲ 60 min", style: TextStyle(color: Colors.white, fontSize: 15, ), )],
                  )
                ],
              ),
            ),

          ],
      ),
    );
  }
}