import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: YesNoWidget(),
      ),
    );
  }
}

class YesNoWidget extends StatefulWidget {
  const YesNoWidget({Key? key})
      : super(key: key);

  @override
  _YesNoWidgetState createState() =>
      _YesNoWidgetState();
}

class _YesNoWidgetState
    extends State<YesNoWidget> {
  String? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Center the logo at the top
          Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40, bottom: 40),
                  child: Image.asset(
                    'images/logo_bms2.jpg',
                    height: 150,
                  ),
                ),
                // Add dropdown menu
                DropdownButton<String>(
                  value: _selectedTime,
                  items:
                      <String>[
                        '8:55AM - 9:50AM',
                        '9:50AM - 10:45AM',
                        '11:15AM - 12:10PM',
                        '12:10PM - 1:05AM',
                        '2:00PM - 2:55PM',
                        '2:55PM - 3:50PM'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: _handleTimeChange,
                  hint: Text('Select Time'),
                ),
                // Display selected Time
                if (_selectedTime != null)
                  Text('Selected Time: $_selectedTime'),
              ],
            ),
          ),
          // White boxes
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WhiteBoxWidget(),
              WhiteBoxWidget(),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WhiteBoxWidget(),
              WhiteBoxWidget(),
            ],
          ),
        ],
      ),
    );
  }

  void _handleTimeChange(String? newValue) {
    setState(() {
      _selectedTime = newValue;
    });
    // Handle dropdown value change
  }
}

class WhiteBoxWidget extends StatefulWidget {
  const WhiteBoxWidget({Key? key}) : super(key: key);

  @override
  _WhiteBoxWidgetState createState() => _WhiteBoxWidgetState();
}

class _WhiteBoxWidgetState extends State<WhiteBoxWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey[800]!,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      height: 120,
      width: 150,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            height: 30,
            child: Text(
              'Class Room-<>',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ToggleButtons(
            isSelected: [_selectedIndex == 0, _selectedIndex == 1],
            onPressed: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            borderRadius: BorderRadius.circular(8),
            selectedBorderColor: Colors.white,
            selectedColor: Colors.white,
            fillColor: Colors.black,
            color: Colors.black,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Yes',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'No',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
