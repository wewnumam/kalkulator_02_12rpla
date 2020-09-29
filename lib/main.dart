import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() => runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  CalculatorAppState createState() => CalculatorAppState();
}

class CalculatorAppState extends State<MainApp> {
  final double _padding = 16.0;
  final double _buttonFontSize = 24.0;

  final Color _primarySwatchColor = Colors.amber;
  final Color _titleAppBarColor = Colors.grey[900];
  final Color _buttonColorGrey = Colors.grey[900];
  final Color _buttonHighlightColor = Colors.amberAccent;
  final Color _buttonColorPrimary = Colors.amber;
  final Color _textColorGrey = Colors.grey[900];

  int valueA;
  int valueB;
  var sbValue = new StringBuffer();
  String operator;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: _primarySwatchColor),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "KALKULATOR by Ahmad Nuhisya",
              style: TextStyle(color: _titleAppBarColor),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              key: Key("expanded_bagian_atas"),
              flex: 1,
              child: Container(
                key: Key("expanded_container_bagian_atas"),
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(_padding),
                color: _textColorGrey,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    AutoSizeText(
                      sbValue.toString(),
                      style: TextStyle(
                          color: _primarySwatchColor,
                          fontSize: _buttonFontSize * 2),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              key: Key("expanded_bagian_bawah"),
              flex: 1,
              child: Column(
                key: Key("expanded_column_bagian_bawah"),
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "C",
                              style: TextStyle(
                                  color: _primarySwatchColor,
                                  fontSize: _buttonFontSize),
                            ),
                            onPressed: () {
                              clearValue();
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Icon(
                              Icons.backspace,
                              color: _buttonColorPrimary,
                            ),
                            onPressed: () {
                              deleteValue();
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "/",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("/");
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "7",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("7");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "8",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("8");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "9",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("9");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "x",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("x");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "4",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("4");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "5",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("5");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "6",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("6");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "-",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("-");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "1",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("1");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "2",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("2");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "3",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("3");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "+",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("+");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: RaisedButton(
                            color: _buttonColorGrey,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "0",
                              style: TextStyle(
                                color: _buttonColorPrimary,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("0");
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: RaisedButton(
                            color: _primarySwatchColor,
                            highlightColor: _buttonHighlightColor,
                            child: Text(
                              "=",
                              style: TextStyle(
                                color: _textColorGrey,
                                fontSize: _buttonFontSize,
                              ),
                            ),
                            onPressed: () {
                              appendValue("=");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    sbValue.write("0");
    operator = "";
  }

  void appendValue(String str) => setState(() {
        bool isDoCalculate = false;
        if (str == "=") {
          isDoCalculate = true;
        } else if (str == "/" || str == "x" || str == "-" || str == "+") {
          if (operator.isEmpty) {
            operator = str;
          } else {
            isDoCalculate = true;
          }
        }

        if (!isDoCalculate) {
          if (sbValue.toString() == "0" && str != "0") {
            sbValue.clear();
          }
          sbValue.write(str);
        } else {
          List<String> values = sbValue.toString().split(operator);
          if (values.length == 2 &&
              values[0].isNotEmpty &&
              values[1].isNotEmpty) {
            valueA = int.parse(values[0]);
            valueB = int.parse(values[1]);
            sbValue.clear();
            int total = 0;
            switch (operator) {
              case "/":
                total = valueA ~/ valueB;
                break;
              case "x":
                total = valueA * valueB;
                break;
              case "-":
                total = valueA - valueB;
                break;
              case "+":
                total = valueA + valueB;
            }
            sbValue.write(total);
            if (str == "/" || str == "x" || str == "-" || str == "+") {
              operator = str;
              sbValue.write(str);
            } else {
              operator = "";
            }
          } else {
            String strValue = sbValue.toString();
            String lastCharacter = strValue.substring(strValue.length - 1);
            if (str == "/" || str == "x" || str == "-" || str == "+") {
              sbValue.clear();
              sbValue
                  .write(strValue.substring(0, strValue.length - 1) + "" + str);
              operator = str;
            } else if (str == "=" &&
                (lastCharacter == "/" ||
                    lastCharacter == "x" ||
                    lastCharacter == "-" ||
                    lastCharacter == "+")) {
              sbValue.clear();
              sbValue.write(strValue.substring(0, strValue.length - 1));
            }
          }
        }
      });

  void deleteValue() => setState(() {
        String strValue = sbValue.toString();
        if (strValue.length > 0) {
          String lastCharacter = strValue.substring(strValue.length - 1);
          if (lastCharacter == "/" ||
              lastCharacter == "x" ||
              lastCharacter == "-" ||
              lastCharacter == "+") {
            operator = "";
          }
          strValue = strValue.substring(0, strValue.length - 1);
          sbValue.clear();
          sbValue.write(strValue.length == 0 ? "0" : strValue);
        }
      });

  void clearValue() => setState(() {
        operator = "";
        sbValue.clear();
        sbValue.write("0");
      });
}
