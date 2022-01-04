import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "CheatMeal Menüsü",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  YemekSayfasi({Key? key}) : super(key: key);

  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int yemekNo = 1;
  int tatliNo = 1;
  int icecekNo = 1;
  
  List<String> yemekAdlari = [
    "Kebap",
    "Lahmacun",
    "Lazanya",
    "Pizza",
    "Hamburger"
  ];
  List<String> tatliAdlari = [
    "Waffle",
    "Cheesecake",
    "Muhallebi",
    "Soğuk Baklava",
    "Magnolia",
  ];

  NoDegisim() {
  var i= Random().nextInt(5)+1;
  
  A:
  while(true){
    if(yemekNo != i){
     yemekNo=i;
        break A;
    }
    else {
     i = Random().nextInt(5)+1;
    }
  }
    //yemekNo = (Random().nextInt(5) + 1);
    var a= Random().nextInt(5)+1;
  
  B:
  while(true){
    if(icecekNo!= a){
     icecekNo=a;
        break B;
    }
    else {
     a = Random().nextInt(5)+1;
    }
  }
    //icecekNo = Random().nextInt(5) + 1;
    var b= Random().nextInt(5)+1;
  
  C:
  while(true){
    if(tatliNo != b){
     tatliNo=b;
        break C;
    }
    else {
     b = Random().nextInt(5)+1;
    }
  }
    //tatliNo = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {
                    setState(() {
                      NoDegisim();
                    });
                  },
                  child: Image.asset("assets/yemek$yemekNo.jpg")),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 25),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 32,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  onPressed: () {
                    setState(() {
                      NoDegisim();
                    });
                  },
                  child: Image.asset("assets/tatlı$tatliNo.jpg")),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 25),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 32,
              color: Colors.black,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  overlayColor: MaterialStateProperty.all<Color>(Colors.black),
                ),
                onPressed: () {
                  setState(() {
                    NoDegisim();
                  });
                },
                child: Image.asset("assets/icecek$icecekNo.jpg")),
          )),
        ],
      ),
    );
  }
}
