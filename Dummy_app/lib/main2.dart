import 'package:flutter/material.dart';

class Baby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new My_app();
  }
}
class My_app extends StatefulWidget {
  @override
  _My_appState createState() => _My_appState();
}

class _My_appState extends State<My_app> {
  String name="Kuldeep Rana";
  int score = 0;
  int penalty = 0;
  int finalscore = 0;
  String message = "Press the Button ";
  String fun() {
      this.message = "Oops Negative Score";
      this.finalscore = this.score - (this.penalty);
      if(finalscore>=0)this.col=Colors.green;
      else this.col=Colors.red;
  }

  void reset() {
    this.score = 0;
    this.finalscore = 0;
    this.penalty = 0;
    this.message = "Press Left And Right";
  }
  int cur=0;
  Color col=Colors.green; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          backgroundColor: Colors.grey[700],
          elevation: 0.0,
          centerTitle: true,
         title: Text("Boom"),            
              ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Text(
                "Hello $name",
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3.0,
                    fontSize: 25.0),
              ),
            ),
          ),
          
          Divider(
            height: 50.0,
            color: null,
          ),
       
          SizedBox(
            height: 80.0,
          ),
          Text(
            "Your Score",
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 3.5,color: Colors.white),
          ),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "$score",
                style: TextStyle(fontSize: 20.0, color: Colors.green[400]),
              )),
          Text(
            "Total Penalty ",
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 3.5,color: Colors.white),
          ),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "$penalty",
                style: TextStyle(fontSize: 20.0, color: Colors.red[400]),
              )),
          Divider(
            height: 20.0,
            color: Colors.grey[900],
          ),
          Text(
            "Final Score",
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 3.5,color: Colors.white),
          ),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "${finalscore<0?(message):finalscore}",
                style: TextStyle(fontSize: 20.0, color:col),
              )),
          Divider(
            height: 150.0,
            color: Colors.grey[900],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () {
                  setState(() {
                    penalty += 1;
                    this.fun();
                  });
                },
                child: Icon(Icons.arrow_back),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    this.reset();
                  });
                },
                backgroundColor: Colors.green,
                child: Text("Reset"),
              ),
              FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () {
                  setState(() {
                    score += 1;
                    this.fun();
                  });
                },
                child: Icon(Icons.arrow_forward),
              ),
            ],
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: cur,   
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.home),title:Text("home")),
          
      //     BottomNavigationBarItem(icon: Icon(Icons.chat),title: Text("chats")

      //     )
      //   ],
      //   onTap: (int index){
         
      //    setState((){
      //      cur=index;
      //    });
      //   },
      // ),
    );
  }
}