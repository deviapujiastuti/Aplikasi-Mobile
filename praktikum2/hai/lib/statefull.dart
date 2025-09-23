import 'package:flutter/material.dart';

void main() {
  runApp(const MyStatefull());
}

class MyStatefull extends StatefulWidget {
  const MyStatefull({super.key});

  @override
  State<MyStatefull> createState() => _MyStatefullState();
}

class _MyStatefullState extends State<MyStatefull> {
  int _kelipatan = 0;

  void _kelipatanDua() {
    setState(() {
      _kelipatan += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Statefull Widget"),
          backgroundColor: Colors.purple[50],
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 40), // supaya tidak ketutup debug ribbon
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.green,
                    child: const Text(
                      "IF",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.blue,
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Kotak biru
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Kelipatan 2 : "),
                    Text(
                      '$_kelipatan',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Teks di luar kotak
              const Text(
                "Hai i am Text Widget",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              // ElevatedButton
              ElevatedButton(
                onPressed: () {
                  print("tombol ditekan");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text("Elevated Button"),
              ),

              const SizedBox(height: 20),

              // Logo dari internet (online)
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Logo_Unand.svg/600px-Logo_Unand.svg.png",
                width: 100,
                height: 150,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _kelipatanDua,
          tooltip: "Kelipatan 2",
          child: const Icon(
            Icons.add,
            color: Colors.amber,
            size: 50.0,
          ),
        ),
      ),
    );
  }
}
