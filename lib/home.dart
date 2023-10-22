import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  TextEditingController t2 = TextEditingController(text: "0");
  TextEditingController t2 = TextEditingController(text: "0");

  void DoAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int,parse(t2.text);
      sum = num1 + num2;
    });
  }

  void DoSub() {
    setState(() {
      num1 = int,parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void DoMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void DoDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calci'),
        centerTitle: true,
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Output:$sum"),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: "Enter number "),
            controller: t1,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: "Enter number 2"),
            controller: t2,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                onPressed: DoAdd,
                child: Text("+"),
                color: Colors.tealAccent,
              ),
              MaterialButton(
                onPressed: DoSub,
                child: Text("-"),
                color: Colors.tealAccent,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                onPressed: DoMul,
                child: Text("*"),
                color: Colors.tealAccent,
              ),
              MaterialButton(
                onPressed: DoDiv,
                child: Text("/"),
                color: Colors.tealAccent,
              )
            ],
          ),
        ],
      )),
    );
  }
}
