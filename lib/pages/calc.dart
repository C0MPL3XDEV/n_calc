// Here goes the UI of the calculator

import 'package:flutter/material.dart';

import '../math/rpn.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  String enteredText = '';
  String operator = '';
  int i = 1;
  RPN rpn = RPN.getInstance();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x1A696969),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Text(
                      enteredText,
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: const Color(0x1A696969),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            enteredText += " ";
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Icon(Icons.space_bar),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += " tan ";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            'tan',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += 'e';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            'e',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += 'pi';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            'π',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            operator += ' ^ ';
                            setState(() {
                              enteredText += " ^ ";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            ' ^ ',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            operator += ' log ';
                            setState(() {
                              enteredText += " log ";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(70, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            ' log ',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            operator += ' sin ';
                            setState(() {
                              enteredText += " sin ";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(70, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            ' sin ',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            operator += ' cos ';
                            setState(() {
                              enteredText += " cos ";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(70, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            ' cos ',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText = "";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0x1A696969),
                              fixedSize: const Size(50, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              )),
                          child: const Text(
                            'AC',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += '!';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            ' ! ',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            operator = " % ";
                            setState(() {
                              enteredText += " % ";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '%',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            operator = "/";
                            setState(() {
                              enteredText += "÷";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '÷',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += "7";
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '7',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += '8';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '8',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += '9';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '9',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            operator += '*';
                            setState(() {
                              enteredText += '×';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '×',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += '4';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '4',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += '5';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '5',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += '6';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '6',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            operator += '-';
                            setState(() {
                              enteredText += ' -';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                          ),
                          child: const Text(
                            '-',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += '1';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '1',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += '2';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '2',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += '3';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '3',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            operator += ' + ';
                            setState(() {
                              enteredText += ' + ';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '+',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += '0';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '0',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText += '.';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            '.',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              enteredText =
                                  enteredText.replaceFirst(RegExp(r".$"), "");
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Icon(Icons.backspace),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (rpn.checkValidity(enteredText)) {
                              enteredText =
                                  rpn.evaluate(enteredText).toString();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0x1A696969),
                            fixedSize: const Size(50, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text(
                            ' = ',
                            style: TextStyle(
                              color: Color(0xffD76061),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // TODO: implement build
  }
}
