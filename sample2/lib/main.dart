import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: "Uygulma çerçevesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("Boş Uygulama Çerçevesi"),
      ),
      body: AnaEkran(),
      );
  }
}

class AnaEkran extends StatefulWidget {
  @override

  _AnaEkranState createState() => _AnaEkranState();
}
class _AnaEkranState extends State<AnaEkran> {

  num sayi1 = 0;
  num sayi2 = 0;
  num sonuc = 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();


  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

    sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
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
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            ElevatedButton(
              onPressed: sayiTopla,
              child: Text("Topla"),
            ),
            ElevatedButton(
              onPressed: sayiCikar, 
              child: Text("Çıkar"),
            ),
            ElevatedButton(
              onPressed: sayiCarp,
              child: Text("Çarp"),
            ),
            ElevatedButton(
              onPressed: sayiBol,
              child: Text("Böl"),
            ),
          ],
        ),
      ),
    );
  }
}