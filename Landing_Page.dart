import 'package:flutter/material.dart';
import 'dart:ui'; // Import for image filtering

class XkeyoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), // Adjust blur intensity
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/your_image.jpg'), // Image Background
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // AppBar
                AppBar(
                  backgroundColor: Colors.transparent, // Make AppBar transparent
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context),
                  ),
                  title: Text('Xkeyo'),
                ),
                // Rest of the app content
                Text(
                  'Your identity in the palm of your hand',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28), // Adjust font size
                ),
                SizedBox(height: 20), // Adjust spacing
                Text(
                  'Forget your ID, keys, wallet at home, on purpose.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16), // Adjust font size
                ),
                SizedBox(height: 40), // Adjust spacing
                ElevatedButton(
                  onPressed: () {}, // Implement scan functionality
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Scan'),
                      SizedBox(width: 10), // Adjust spacing
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20), // Adjust spacing
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
