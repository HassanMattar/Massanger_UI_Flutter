import 'dart:math';

import 'package:flutter/material.dart';


import '../Result/Result.dart';

class Bmi extends StatefulWidget {
  _State createState() => _State();
}

String genders = 'Maile';
double height = 100;
int age = 20;
int weghit = 40;
Color color = Color(0xffCD0000);
bool touch = true;
Color touches = Color(0xffEDC6C6);

class _State extends State<Bmi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            touch = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: touch ? color : Colors.grey[400],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                color: touch ? touches : Color(0xff740000),
                                image: AssetImage('images/male.png'),
                                width: 90,
                                height: 90,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            touch = false;
                            genders = 'FEMAILE';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: !touch ? color : Colors.grey[400]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                color: !touch ? touches : Color(0xff740000),
                                image: AssetImage('images/female.png'),
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'HEIGHT',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'CM',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Slider(
                        inactiveColor: Color(0xffEB6C6C),
                        activeColor: Color(0xff830B0B),
                        value: height,
                        onChanged: (dd) {
                          setState(() {
                            height = dd;
                            print(dd);
                          });
                        },
                        max: 300,
                        min: 30,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey[400]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '$age',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    splashColor: Colors.red[900],
                                    child: Icon(Icons.remove),
                                    backgroundColor: Colors.grey[600],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    splashColor: Colors.red[900],
                                    child: Icon(Icons.add),
                                    backgroundColor: Colors.grey[600],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey[400]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WIEGHT',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 23),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '$weghit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weghit--;
                                      });
                                    },
                                    splashColor: Colors.red[900],
                                    child: Icon(Icons.remove),
                                    backgroundColor: Colors.grey[600],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weghit++;
                                      });
                                    },
                                    splashColor: Colors.red[900],
                                    child: Icon(Icons.add),
                                    backgroundColor: Colors.grey[600],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffC30505),
                    borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Result(
                              gender:  genders,
                              result: (weghit/pow(height/100,2)).roundToDouble(),
                              age: age,
                            ),
                          ));
                    },
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
