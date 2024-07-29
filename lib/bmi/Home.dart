import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var wController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  String result = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: wController,
              decoration: const InputDecoration(
                labelText: 'Weight',
                prefixIcon: Icon(Icons.line_weight),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: ftController,
              decoration: const InputDecoration(
                labelText: 'Weight',
                prefixIcon: Icon(Icons.height),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: inController,
              decoration: const InputDecoration(
                labelText: 'Weight',
                prefixIcon: Icon(Icons.height),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  var inputWt = wController.text.toString();
                  var inputFt = ftController.text.toString();
                  var inputInch = inController.text.toString();
                  if (inputWt != "" && inputFt != "" && inputInch != "") {
                    int weight = int.parse(inputWt);
                    int feet = int.parse(inputFt);
                    int inch = int.parse(inputInch);
                    double heightMeter = ((feet * 12) + inch) * 0.0254;
                    double bmi = weight / (heightMeter * heightMeter);
                    setState(() {
                      result = 'Your BMI Is - ${bmi.toStringAsFixed(2)}';
                    });
                  } else {
                    setState(() {
                      result = 'Invalid Input';
                    });
                  }
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('Calculate',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                )),
            const SizedBox(height: 16),
            Text(
              result,
              textAlign: TextAlign.center,
              style : const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              )
            )
          ],
        ),
      ),
    );
  }
}
