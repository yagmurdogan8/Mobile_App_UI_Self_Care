//@ author YD
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: MyApp()
  ));
}

class MyApp extends StatelessWidget{
  String title = "Self Manage";
  String subtitle = "Catch your time!";

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        flexibleSpace: const Image(
          image: AssetImage('assets/my_app_icon.png'),
          alignment: Alignment(-0.95 , 0.8),
        ),
        title: Center(
          child: Text(title, style: const TextStyle(fontFamily: 'Pacifico', color: Colors.black)),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart, color: Colors.black),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.settings, color: Colors.black),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Text(subtitle, style: const TextStyle (fontFamily: 'Pacifico', color: Colors.black)),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Container(
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                    center: Alignment(0, 0), // near the top right
                    radius: 1.5,
                    colors: <Color>[
                      Color(0xFFFFFFFF),
                      Color(0xFF4CAF50),
                      Color(0xFF000000),
                    ],
                    stops: <double>[0.05, 0.8, 1.0]
                ),
            ),
            height: 100,
            child: const Text('There are no shortcuts to places worth going...', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
          const Image(image: AssetImage('assets/profile.png'), width: 200, height: 200),
              const Divider(color: Colors.green, thickness: 1),
              const Text('Today\'s Report', style: TextStyle (fontSize: 20)),
              const Divider(color: Colors.green, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.my_library_books_rounded, size: 50),
                      Text('\nSTUDY', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('\n3 hours & 30 minutes'),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(Icons.sports, size: 50),
                      Text('\nSPORTS', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('\n1 hours & 45 minutes'),
                    ],
                  ),
                ],
              ),
          const Padding(
            padding: EdgeInsets.fromLTRB(300.0, 3.0, 3.0, 3.0),
            child: Icon(Icons.add_circle_rounded, size: 70, color: Colors.green),
          ),
        ],
      ),
    );
  }
}