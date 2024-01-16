import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FigmaFlutterGeneratorIphone1415promax9Widget(),
      ),
    );
  }
}

class FigmaFlutterGeneratorIphone1415promax9Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Darker background color
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Center the logo at the top
          Center(
            child: Container(
              margin: EdgeInsets.only(top:40 ,bottom: 40), // Adjusted margin

              child: Image.asset(
                'images/logo_bms2.jpg',
                height: 150, // Adjust the height as needed
              ),
            ),
          ),
          // White boxes
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WhiteBoxWidget(),
              WhiteBoxWidget(),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WhiteBoxWidget(),
              WhiteBoxWidget(),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WhiteBoxWidget(),
              WhiteBoxWidget(),
            ],
          ),
          SizedBox(height: 20),
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
}

class WhiteBoxWidget extends StatefulWidget {
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
        color: Colors.white, // Darker box background color
        border: Border.all(
          color: Colors.grey[800]!, // Darker border color
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            offset: Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      height: 120,
      width: 150,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 30,
            child: Text(
              'Class Room-<>',
              style: TextStyle(
                color: Colors.black, // White text color
                fontFamily: 'Montserrat',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          ToggleButtons(
            isSelected: [_selectedIndex == 0, _selectedIndex == 1],
            onPressed: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            borderRadius: BorderRadius.circular(8),
            selectedBorderColor: Colors.white, // White outline color
            selectedColor: Colors.white, // Black text color for selected
            fillColor: Colors.black, // Black background color for selected
            color: Colors.black, // White text color for not selected
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
