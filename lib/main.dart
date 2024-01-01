import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Body Parts Selector',
      home: MyApp(),
    ),
  );
}

class BodyPart {
  String name;
  String description; // Added description field
  Rect region;

  BodyPart(
      {required this.name, required this.description, required this.region});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BodyPart> bodyParts = [
      BodyPart(
        name: 'Head',
        description:
            'The upper part of the body that contains the brain and sensory organs.',
        region: Rect.fromPoints(const Offset(160, 50), const Offset(250, 150)),
      ),
      BodyPart(
        name: 'left Sholder',
        description:
            'The upper part of the body that contains the brain and sensory organs.',
        region: Rect.fromPoints(const Offset(100, 190), const Offset(200, 150)),
      ),
      BodyPart(
        name: 'RightSholder',
        description:
            'The upper part of the body that contains the brain and sensory organs.',
        region: Rect.fromPoints(const Offset(300, 190), const Offset(200, 150)),
      ),
      BodyPart(
        name: 'left arm',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(90, 190), const Offset(150, 280)),
      ),
      BodyPart(
        name: 'Right arm',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(270, 280), const Offset(330, 190)),
      ),
      BodyPart(
        name: 'Right forearm',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(350, 350), const Offset(290, 280)),
      ),
      BodyPart(
        name: 'left forearm',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(120, 350), const Offset(60, 280)),
      ),
      BodyPart(
        name: 'Right hand',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(350, 350), const Offset(290, 280)),
      ),
      BodyPart(
        name: 'Right hand',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(390, 440), const Offset(320, 350)),
      ),
      BodyPart(
        name: 'Right hand',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(20, 440), const Offset(90, 350)),
      ),
      BodyPart(
        name: 'left chest',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(150, 270), const Offset(210, 190)),
      ),
      BodyPart(
        name: 'Right chest',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(270, 270), const Offset(210, 190)),
      ),
      BodyPart(
        name: 'Abdomen',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(265, 340), const Offset(145, 270)),
      ),
      BodyPart(
        name: 'Pelvis',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(265, 410), const Offset(145, 340)),
      ),
      BodyPart(
        name: 'Left Thigh',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(205, 500), const Offset(130, 410)),
      ),
      BodyPart(
        name: 'Right Thigh',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(285, 500), const Offset(210, 410)),
      ),
      BodyPart(
        name: 'right joint',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(285, 550), const Offset(210, 500)),
      ),
      BodyPart(
        name: 'left joint',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(205, 550), const Offset(130, 500)),
      ),
      BodyPart(
        name: 'left joint',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(205, 650), const Offset(130, 500)),
      ),
      BodyPart(
        name: 'right leg',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(285, 550), const Offset(210, 650)),
      ),
      BodyPart(
        name: 'right leg',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(295, 735), const Offset(220, 650)),
      ),
      BodyPart(
        name: 'left leg',
        description:
            'The central part of the body that includes the chest and abdomen.',
        region: Rect.fromPoints(const Offset(200, 735), const Offset(120, 650)),
      ),
      // Add more body parts as needed
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: const Text(
            'Body Parts Selector',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
          ),
        ),
        body: Stack(
          children: [
            Image.asset(
              'images/front.png', // Replace with your image asset
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.contain,
            ),
            ...bodyParts.map((part) {
              return Positioned.fromRect(
                rect: part.region,
                child: GestureDetector(
                  onTap: () {
                    showBodyPartDetails(context, part);
                  },
                  onLongPress: () {
                    editBodyPartName(context, part);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.orange, width: 2.0),
                      color: const Color.fromARGB(14, 236, 159, 14),
                    ),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  void showBodyPartDetails(BuildContext context, BodyPart part) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Body Part Details',
            textAlign: TextAlign.center,
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name: ${part.name}',
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 10),
              Text(
                'Description: ${part.description}',
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'OK',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        );
      },
    );
  }

  void editBodyPartName(BuildContext context, BodyPart part) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController nameController =
            TextEditingController(text: part.name);
        TextEditingController descriptionController =
            TextEditingController(text: part.description);

        return AlertDialog(
          title: const Text('Edit Body Part Details'),
          content: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(labelText: 'Description'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                part.name = nameController.text;
                part.description = descriptionController.text;
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
