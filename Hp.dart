import 'package:flutter/material.dart';

class kuis1 extends StatelessWidget {
  const kuis1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tugas kuis"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
        children: [  
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
              Text(
                  "Training",
                style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("< 🗓 >"), 
                ],
              ),
        const SizedBox(height: 12),

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
              const SizedBox(height: 12),

              Container(
              width: double.infinity,
              height: 185,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors:[ Colors.deepPurple, Colors.purpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15), topLeft: Radius.circular(15), topRight: Radius.circular(120))
              ),
              child: Stack(
                
                children: [
                  Expanded(
                    child: Padding(padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Next Workout", style: TextStyle(color: Colors.white, fontSize: 10),),
                        SizedBox(height: 6),
                        Text("Lets Toning", style: TextStyle(color: Colors.white, fontSize: 20),),
                        SizedBox(height: 2),
                        Text("and Glutes Workout", style: TextStyle(color: Colors.white, fontSize: 25),),
                        SizedBox(height: 45),
                        Text("⏱ 60 min", style: TextStyle(color: Colors.white, fontSize: 15),),
                        SizedBox(height: 0.10),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 2, right: 1),
                            child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        ),
                      ],
                      
                    ),
                    
                    
                    )
                  )
                ],
              ),
            ),
        

          ],
        ),
      ),
    );
  }
}