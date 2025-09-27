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
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Next Workout", style: TextStyle(color: Colors.white, fontSize: 10),),
                        SizedBox(height: 6),
                        Text("Lets Toning", style: TextStyle(color: Colors.white, fontSize: 20),),
                        SizedBox(height: 2),
                        Text("and Glutes Workout", style: TextStyle(color: Colors.white, fontSize: 25),),
                        SizedBox(height: 40),
                        Text("⏱ 60 min", style: TextStyle(color: Colors.white, fontSize: 15),),
                      ],
                      ),
                      ),
                        
                        
                          Positioned(
                            right: 16,
                            top: 135,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                ),
                              child: Icon(Icons.play_arrow, size: 15,), 
                              ),
                          ),
                        ],
                      ),
                  ),

                          const SizedBox(height: 16),

                          Container(
                            width: double.infinity,
                            height: 120,
                            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 111, 7, 7).withAlpha(10),
                                  blurRadius: 6,
                                ),
                              ]
                            ),

                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Image.asset("Gambar/card.jpg",
                                      width: 180,
                                    ),
                                    Positioned(right: 20, bottom: 15,
                                    Image.asset("Gambar/figure.png",
                                  width: 50,
                                  height: 50,
                                ),
                                    ),
                                  ],
                                ),
                              

                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("You are doing great", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue
                                    ),
                                    ),
                                    SizedBox(height: 4),
                                    Text("keep it Up", style: TextStyle(fontSize: 12, color: Colors.black54),),
                                    Text("nstick to your plan", style: TextStyle(fontSize: 12, color: Colors.black54),),
                                  ],
                                ),
                                ),    
                      ],
                    ),
                    )
                ],
        
            ),
      ),
    );
  }
}