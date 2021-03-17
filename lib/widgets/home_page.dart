import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController input1 = TextEditingController(text: "0");
  final TextEditingController input2 = TextEditingController(text: "0");

  void addsomething() {
    setState(() {
      num1 = int.parse(input1.text);
      num2 = int.parse(input2.text);
      sum = num1 + num2;
    });
  }

  void subtract() {
    setState(() {
      num1 = int.parse(input1.text);
      num2 = int.parse(input2.text);
      sum = num1 - num2;
    });
  }

  void multiply() {
    setState(() {
      num1 = int.parse(input1.text);
      num2 = int.parse(input2.text);
      sum = num1 * num2;
    });
  }

  void divide() {
    setState(() {
      num1 = int.parse(input1.text);
      num2 = int.parse(input2.text);
      sum = (num2 ~/ num1);
    });
  }

  void doClear() {
    setState(() {
      input1.text = "0";
      input2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        title: Text("Basic Calculator Application"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      decoration:
                          InputDecoration(hintText: "Enter the first Number"),
                      controller: input1,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      decoration:
                          InputDecoration(hintText: "Enter the second Number"),
                      controller: input2,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      color: Color(0xff69d1c5),
                      onPressed: () {
                        addsomething();
                      },
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                      width: 10.0,
                    ),
                    RaisedButton(
                      color: Color(0xff69d1c5),
                      onPressed: () {
                        subtract();
                      },
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                  width: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      color: Color(0xff69d1c5),
                      onPressed: () {
                        multiply();
                      },
                      child: Text(
                        "*",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    RaisedButton(
                      color: Color(0xff69d1c5),
                      onPressed: () {
                        divide();
                      },
                      child: Text(
                        "/",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: Color(0xff69d1c5),
                      onPressed: () {},
                      child: Text(
                        "Total = $sum",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    RaisedButton(
                      color: Color(0xff69d1c5),
                      onPressed: () {
                        doClear();
                      },
                      child: Text("Clear screen"),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
