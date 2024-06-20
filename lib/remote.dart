
import 'package:flutter/material.dart';

class remote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Room Control',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: RoomControlPage(),
    );
  }
}

class RoomControlPage extends StatefulWidget {
  @override
  _RoomControlPageState createState() => _RoomControlPageState();
}

class _RoomControlPageState extends State<RoomControlPage> {
  bool isLampOn = false;
  bool isDoorLocked = true;
  double fanSpeed = 1;
  String acMode = 'Fan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('On Progres'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  'https://via.placeholder.com/100', // Replace with actual image URL
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Executive Cityscape Room',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('Status: On Going'),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            buildControlSection('Lamp', isLampOn ? 'On' : 'Off', () {
              setState(() {
                isLampOn = !isLampOn;
              });
            }),
            buildControlSection('Door', isDoorLocked ? 'Lock' : 'Unlock', () {
              setState(() {
                isDoorLocked = !isDoorLocked;
              });
            }),
            buildAirConditionerControl(),
            SizedBox(height: 20),
            buildButton('Bluetooth Connection', () {
              // Handle Bluetooth Connection
            }),
            buildButton('Clean Room', () {
              // Handle Clean Room
            }),
            buildButton('Call Center', () {
              // Handle Call Center
            }),
            SizedBox(height: 20),
            buildButton('Emergency Call', () {
              // Handle Emergency Call
            }, isEmergency: true),
          ],
        ),
      ),
    );
  }

  Widget buildControlSection(String label, String status, VoidCallback onPressed) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        Row(
          children: [
            ElevatedButton(
              onPressed: onPressed,
              child: Text(status),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget buildAirConditionerControl() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Air Conditional'),
        Row(
          children: [
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_drop_up),
                  onPressed: () {
                    setState(() {
                      if (fanSpeed < 30) fanSpeed += 17;
                    });
                  },
                ),
                Text(fanSpeed.toString()),
                IconButton(
                  icon: Icon(Icons.arrow_drop_down),
                  onPressed: () {
                    setState(() {
                      if (fanSpeed > 1) fanSpeed -= 1;
                    });
                  },
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    buildAcModeButton('Fan'),
                    buildAcModeButton('Cool'),
                  ],
                ),
                Row(
                  children: [
                    buildAcModeButton('Turbo'),
                    buildAcModeButton('Normal'),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget buildAcModeButton(String mode) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          acMode = mode;
        });
      },
      child: Text(mode),
      style: ElevatedButton.styleFrom(
        backgroundColor: acMode == mode ? Colors.blue : Colors.grey,
      ),
    );
  }

  Widget buildButton(String label, VoidCallback onPressed, {bool isEmergency = false}) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: isEmergency ? Colors.red : Colors.blue,
      ),
    );
  }
}
