import 'package:bmi_calculator/colors.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int height = 180;
  int weight = 83;
  int age = 27;
  bool isMale = true;

  late int calculation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(children: [
        Expanded(
            flex: 8,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: Ink(
                        decoration: BoxDecoration(
                          color: isMale ? sPrimaryColor : sSecondaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 60,
                                color: isMale ? buttonColor : Colors.white,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    color: isMale ? buttonColor : Colors.white,
                                    fontSize: 30),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                            color: !isMale ? sPrimaryColor : sSecondaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 60,
                                color: !isMale ? buttonColor : Colors.white,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    color:
                                        !isMale ? buttonColor : Colors.white),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
              ],
            )),
        Expanded(
            flex: 8,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: sPrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "$height ",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "CM",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Slider(
                      min: 120,
                      max: 220,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                      activeColor: buttonColor,
                      thumbColor: buttonColor,
                    ),
                  ]),
            )),
        Expanded(
          flex: 8,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: sPrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "$weight ",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "KG",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: "weight increse",
                              backgroundColor: incDecBtn,
                              onPressed: () {
                                setState(() {
                                  weight > 1 ? weight-- : weight;
                                });
                              },
                              child: const Icon(Icons.remove),
                              mini: true,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              heroTag: "weight Incese",
                              backgroundColor: incDecBtn,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: const Icon(Icons.add),
                              mini: true,
                            )
                          ],
                        )
                      ]),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: sPrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              "$age ",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Years",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: "age decrese",
                              backgroundColor: incDecBtn,
                              onPressed: () {
                                setState(() {
                                  age > 1 ? age-- : age;
                                });
                              },
                              child: const Icon(Icons.remove),
                              mini: true,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              heroTag: "age increse",
                              backgroundColor: incDecBtn,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: const Icon(Icons.add),
                              mini: true,
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ],
          ),
        ),
        MaterialButton(
          minWidth: double.infinity,
          height: 80,
          color: buttonColor,
          onPressed: () {
            double h = height / 100;
            double heightSquare = h * h;
            double result = (weight / heightSquare).roundToDouble();

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ResultPage(result: result)));
          },
          child: const Text(
            "Calculate",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        )
      ]),
    );
  }
}
