import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("session-6"),
        ),
        body: DynamicWidget(),
      ),
    );
  }
}

class DynamicWidget extends StatefulWidget {
  @override
  State<DynamicWidget> createState() => _DynamicW_State();
}

class _DynamicW_State extends State<DynamicWidget> {
  late MaterialColor _selectedColor;
  final List<MaterialColor> _materialColors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.orange,
  ];

  @override
  void initState() {
    super.initState();
    _selectedColor = _materialColors[0];
  }

  void _changeColor(MaterialColor color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DropdownButton<MaterialColor>(
          value: _selectedColor,
          onChanged: (MaterialColor? color) {
            if (color != null) {
              _changeColor(color);
            }
          },
          items: _materialColors.map<DropdownMenuItem<MaterialColor>>((MaterialColor color) {
            return DropdownMenuItem<MaterialColor>(
              value: color,
              child: Container(
                width: 100,
                height: 20,
                color: color,
              ),
            );
          }).toList(),
        ),
        Expanded(
          child: Container(
            color: _selectedColor,
            child: const Center(
              child: Text(
                "my selected color-770",
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }
}
