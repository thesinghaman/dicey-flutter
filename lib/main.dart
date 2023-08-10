import 'package:flutter/material.dart';

import './gradient_container.dart';

// Entry point of the Flutter application
void main() {
  // Run the app with the MaterialApp widget
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      // Set the home page of the app to a Scaffold widget
      home: Scaffold(
        // Set the body of the Scaffold to a GradientContainer widget
        body: GradientContainer(
          // Set the start color of the gradient to RGB(230, 230, 250) with opacity 1
          Color.fromRGBO(230, 230, 250, 1),
          // Set the end color of the gradient to RGB(195, 177, 225) with opacity 0.8
          Color.fromRGBO(195, 177, 225, 0.8),
        ),
      ),
    ),
  );
}
