import 'package:flutter/material.dart';
class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  final TextEditingController height =TextEditingController();
  final TextEditingController weight =TextEditingController();
  double res = 0;
  void Calc(){
    setState(() {

    });
    double h1 = double.parse(height.text)/100;
    double w1 = double.parse(weight.text);
    double h2 = h1 * h1;
    res = w1 / h2;
    print(res);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: height,
                decoration: InputDecoration(
                  fillColor: Colors.purpleAccent,
                  filled: true,
                  hintText: 'height'
                ),
              ),
              SizedBox(height: 40,),
              TextField(
                controller: weight,
                decoration: InputDecoration(
                    fillColor: Colors.purpleAccent,
                    filled: true,
                    hintText: 'weight'
                ),
              ),
              SizedBox(height: 40,),
              TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: (){ Calc();}, child: Text('calculate')),
              SizedBox(height: 40,),
              Text(res.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            ],
          ),
        ),
      ),
    );
  }
}
