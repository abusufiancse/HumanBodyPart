import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBodyApp(),
    );
  }
}

class MyBodyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Human Body'),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: BodyImageWithClickableAreas(),
    );
  }
}

class BodyImageWithClickableAreas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            // Background Image of Human Body
            Image.asset('images/front.png',
                width: MediaQuery.of(context).size.width * 1,
                fit: BoxFit.contain),

            // Clickable Containers for Body Parts
            // Upper part of the head
            Positioned(
              top: 5,
              left: 162,
              child: ClickableBodyPartContainer(
                partName: 'Head',
                partDescription: 'This is the Head.',
                width: 90,
                height: 105,
              ),
            ),

            // Two containers for body shoulder
            Positioned(
              bottom: 550,
              left: 115,
              child: ClickableBodyPartContainer(
                partName: 'Left Shoulder',
                partDescription: 'This is the left shoulder.',
                width: 92,
                height: 40,
              ),
            ),
            Positioned(
              bottom: 550,
              right: 115,
              child: ClickableBodyPartContainer(
                partName: 'Right Shoulder',
                partDescription: 'This is the Right shoulder.',
                width: 92,
                height: 40,
              ),
            ),
            // Little height container for right arm and left arm

            Positioned(
              bottom: 470,
              right: 80,
              child: ClickableBodyPartContainer(
                partName: 'Right Arm',
                partDescription: 'This is the Right Arm.',
                width: 60,
                height: 80,
              ),
            ),
            Positioned(
              bottom: 470,
              left: 80,
              child: ClickableBodyPartContainer(
                partName: 'Left Arm',
                partDescription: 'This is the Left Arm.',
                width: 60,
                height: 80,
              ),
            ),
            Positioned(
              bottom: 490,
              right: 137,
              child: ClickableBodyPartContainer(
                partName: 'Right Chest',
                partDescription: 'This is the Right Chest.',
                width: 70,
                height: 60,
              ),
            ),
            Positioned(
              bottom: 490,
              left: 138,
              child: ClickableBodyPartContainer(
                partName: 'Left Chest',
                partDescription: 'This is the Left Chest.',
                width: 70,
                height: 60,
              ),
            ),
            // Container for Abdomen
            Positioned(
              bottom: 410,
              left: 140,
              child: ClickableBodyPartContainer(
                partName: 'Abdomen',
                partDescription: 'This is the abdomen.',
                width: 130,
                height: 80,
              ),
            ),

            // Two containers for right forearm and left forearm

            Positioned(
              bottom: 390,
              left: 60,
              child: ClickableBodyPartContainer(
                partName: 'left Forearm',
                partDescription: 'This is the left forearm.',
                width: 70,
                height: 80,
              ),
            ),
            Positioned(
              bottom: 390,
              right: 60,
              child: ClickableBodyPartContainer(
                partName: 'Right Forearm',
                partDescription: 'This is the right forearm.',
                width: 70,
                height: 80,
              ),
            ),
            // Container for Pelvis

            // Two containers for right hand and left hand
            Positioned(
              bottom: 300,
              left: 20,
              child: ClickableBodyPartContainer(
                partName: 'Left Hand',
                partDescription: 'This is the left hand.',
                width: 70,
                height: 90,
              ),
            ),
            Positioned(
              bottom: 300,
              right: 20,
              child: ClickableBodyPartContainer(
                partName: 'Right Hand',
                partDescription: 'This is the left hand.',
                width: 70,
                height: 90,
              ),
            ),
            Positioned(
              bottom: 330,
              left: 130,
              child: ClickableBodyPartContainer(
                partName: 'Pelvis',
                partDescription: 'This is the pelvis.',
                width: 150,
                height: 80,
              ),
            ),
            // Two containers for left and right Thigh
            Positioned(
              bottom: 250,
              left: 125,
              child: ClickableBodyPartContainer(
                partName: 'Left Thigh',
                partDescription: 'This is the left thigh.',
                width: 80,
                height: 80,
              ),
            ),
            Positioned(
              bottom: 250,
              right: 125,
              child: ClickableBodyPartContainer(
                partName: 'Right Thigh',
                partDescription: 'This is the right thigh.',
                width: 80,
                height: 80,
              ),
            ),

            // Serially two containers for leg joint, leg, and foot
            Positioned(
              bottom: 170,
              left: 130,
              child: ClickableBodyPartContainer(
                partName: 'Left Leg Joint',
                partDescription: 'This is the leg joint.',
                width: 70,
                height: 80,
              ),
            ),
            Positioned(
              bottom: 170,
              right: 130,
              child: ClickableBodyPartContainer(
                partName: 'Right Leg Joint',
                partDescription: 'This is the leg joint.',
                width: 70,
                height: 80,
              ),
            ),
            Positioned(
              bottom: 90,
              left: 130,
              child: ClickableBodyPartContainer(
                partName: 'Left Leg',
                partDescription: 'This is the leg.',
                width: 70,
                height: 80,
              ),
            ),
            Positioned(
              bottom: 90,
              right: 130,
              child: ClickableBodyPartContainer(
                partName: 'Right Leg',
                partDescription: 'This is the leg.',
                width: 70,
                height: 80,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 120,
              child: ClickableBodyPartContainer(
                partName: 'left Foot',
                partDescription: 'This is the left foot.',
                width: 70,
                height: 80,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 120,
              child: ClickableBodyPartContainer(
                partName: 'Right Foot',
                partDescription: 'This is the Right foot.',
                width: 80,
                height: 80,
              ),
            ),
            // Continue adding Positioned widgets for other body parts
            Positioned(
              bottom: 10,
              right: 15,
              child: InkWell(
                focusColor: Colors.orange,
                onTap: () {
                  print('back part tap');
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300, width: 2),
                    color: Colors.transparent,
                  ),
                  width: 80,
                  height: 150,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child: TextButton(
                  onPressed: () {
                    print('back part tap');
                  },
                  child: const Text(
                    'Back Part',
                    style: TextStyle(color: Colors.grey),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}

class ClickableBodyPartContainer extends StatelessWidget {
  final String partName;
  final String partDescription;
  final double width;
  final double height;

  ClickableBodyPartContainer({
    required this.partName,
    required this.partDescription,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Show dialog with part name and description
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(partName),
              content: Text(partDescription),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.orange.shade500, width: 1),
          color: Color.fromARGB(14, 236, 159, 14),
        ),
      ),
    );
  }
}
