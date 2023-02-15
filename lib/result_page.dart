import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double? result;
  const ResultPage({super.key, required this.result});

  showInfo(result) {
    if (result < 18.5) {
      return "Underweight";
    }
    if (result <= 18.5 || result <= 24.9) {
      return "Normal Weight";
    }
    if (result <= 25.0 || result <= 29.9) {
      return "Overweight";
    }
    if (result >= 30.0) {
      return "Obesity";
    }
  }

  showPlan(result) {
    if (result < 18.5) {
      return "Please Eat More";
    }
    if (result <= 18.5 || result <= 24.9) {
      return "Eat Reagular Type Meal";
    }
    if (result <= 25.0 || result <= 29.9) {
      return "Please Eat Less";
    }
    if (result >= 30.0) {
      return "Please Eat too Much Less";
    }
  }

  showColor(result) {
    if (result < 18.5) {
      return Colors.red.shade300;
    }
    if (result <= 18.5 || result <= 24.9) {
      return Colors.green;
    }
    if (result <= 25.0 || result <= 29.9) {
      return Colors.yellow;
    }
    if (result >= 30.0) {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(children: [
        Center(
          heightFactor: 2,
          child: Text(
            "Your Result",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
              color: sPrimaryColor, borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  " Your BMI Is $result",
                  style: TextStyle(
                      color: showColor(result),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "You Are ${showInfo(result)}",
                  style: TextStyle(
                      color: showColor(result),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "${showPlan(result)}",
                  style: TextStyle(
                      color: showColor(result),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        )),
        MaterialButton(
          minWidth: double.infinity,
          height: 80,
          color: buttonColor,
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            "ReCalculate",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
