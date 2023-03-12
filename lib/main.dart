import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'ВЫБОР КАНАЛОВ ',
              style: TextStyle(color: Colors.red, fontSize: 25),
            ),
            List(),
            List(),
            List(),
          ],
        ),
      ),
    );
  }
}

class List extends StatelessWidget {
  const List({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Row(
            children: [
              Container(
                width: 140,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset(
                    'assets/images/nts.png',
                    width: 80,
                    height: 40,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                'НТС',
                style: TextStyle(fontSize: 2),
              )
            ],
          ),
          const SizedBox(height: 15),
          const SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            '0.0 сом',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
