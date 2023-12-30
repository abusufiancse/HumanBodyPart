import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  void showMyDialog(BuildContext context, String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text("Massage"),
          content: Text(text),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}

class TopProgressBar extends StatelessWidget {
  final String progressBarImagePath;

  const TopProgressBar({Key? key, required this.progressBarImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35.0),
      alignment: Alignment.topCenter,
      height: 25,
      child: Image.asset(progressBarImagePath, fit: BoxFit.fill),
    );
  }
}

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      child: TextButton.icon(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back),
        label: const Text("Back"),
      ),
    );
  }
}

class TopTitle extends StatelessWidget {
  final double topMargin;
  final double leftMargin;
  final String title;

  const TopTitle(
      {Key? key,
      required this.topMargin,
      required this.leftMargin,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(
        top: topMargin,
        left: leftMargin,
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class SendButton extends StatelessWidget {
  final Function sendAction;
  final Icon buttonIcon;

  const SendButton(
      {Key? key, required this.sendAction, required this.buttonIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.bottomRight,
      child: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: const Icon(Icons.arrow_forward),
        onPressed: () => sendAction(),
      ),
    );
  }
}
