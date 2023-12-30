import 'package:flutter/material.dart';
import 'package:humanbody/human_anatomy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Body Parts',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: const Text(
          'Human Body Parts',
        ),
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      body: Center(child: HumanAnatomy(onChanged: _handleBodyPartSelection)),
    );
  }

  void _handleBodyPartSelection(String? selectedBodyPart) {
    // Handle the selected body part here, if needed.
    print('Selected Body Part: $selectedBodyPart');

    // Show a dialog with the selected body part
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Your Selected Body Part',
            style: TextStyle(color: Colors.orange),
          ),
          content: Text(
            '$selectedBodyPart',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('OK',
                  style: TextStyle(color: Colors.orange, fontSize: 18)),
            ),
          ],
        );
      },
    );
  }
}
