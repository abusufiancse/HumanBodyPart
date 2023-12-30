import 'package:flutter/material.dart';
import 'package:humanbody/human_anatomy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: SafeArea(
        child: Center(child: HumanAnatomy(onChanged: _handleBodyPartSelection)),
      ),
    );
  }

  void _handleBodyPartSelection(List selectedBodyParts) {
    // Handle the selected body parts here, if needed.
    print('Selected Body Parts: $selectedBodyParts');
  }
}
