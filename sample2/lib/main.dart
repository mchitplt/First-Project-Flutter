import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: "App Frame",
      home: Dock(),
    );
  }
}

class Dock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Empty App Frame"),
      ),
      body: MainScreen(),
      );
  }
}

class  extends MainScreen StatefulWidget {
  @override

  _MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen> {

  num number1 = 0;
  num number2 = 0;
  num total = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();


  numberSum() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      total = number1 + number2;
    });
  }

  numberSubtract() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      total = number1 - number2;
    });
  }

  numberMultiply() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      total = number1 * number2;
    });
  }

    numberDivide() {
    setState(() {
      number1 = num.parse(t1.text);
      number2 = num.parse(t2.text);
      total = number1 / number2;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      margin: EdgeInsets.all(50.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$total"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            ElevatedButton(
              onPressed: numberSum,
              child: Text("Total"),
            ),
            ElevatedButton(
              onPressed: numberSubtract, 
              child: Text("Subtract"),
            ),
            ElevatedButton(
              onPressed: numberMultiply,
              child: Text("Multiply"),
            ),
            ElevatedButton(
              onPressed: numberDivide,
              child: Text("Divide"),
            ),
          ],
        ),
      ),
    );
  }
}
