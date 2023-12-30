library human_anatomy;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HumanAnatomy extends StatefulWidget {
  final ValueChanged<String?> onChanged;

  const HumanAnatomy({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<HumanAnatomy> createState() => _HumanAnatomyState();
}

class _HumanAnatomyState extends State<HumanAnatomy> {
  String? _selectedBodyPart;

  @override
  Widget build(BuildContext context) {
    return humanAnatomy();
  }

  Widget humanAnatomy() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .7,
      height: MediaQuery.of(context).size.height * .8,
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              bodyPart(
                  "assets/head.svg",
                  "Head  \nDescription: The uppermost part of the human body containing the brain and sensory organs.",
                  0.0,
                  0.0,
                  0.0,
                  70.0),
              // bodyPart("assets/left_ear.svg", "leftEar", 32.0, 50.0, 0.0, 20.0),
              // bodyPart("assets/right_ear.svg", "rightEar", 32.0, 0.0, 50.0, 20.0),
              // bodyPart("assets/left_eye.svg", "LeftEye", 22.0, 20.0, 0.0, 10.0),
              // bodyPart("assets/right_eye.svg", "rightEye", 22.0, 0.0, 20.0, 10.0),
              // bodyPart("assets/nose.svg", "Nose", 25.0, 0.0, 0.0, 20.0),
              // bodyPart("assets/mouth.svg", "Mouth", 48.0, 0.0, 0.0, 10.0),
              bodyPart(
                  "assets/neck.svg",
                  "Neck \nDescription: The slender, flexible connection between the head and the rest of the body.",
                  58.0,
                  0.0,
                  0.0,
                  40.0),
              bodyPart(
                  "assets/chest.svg",
                  "Chest  \nDescription: The front upper part of the torso, housing the heart and lungs and protected by the ribcage",
                  93.0,
                  0.0,
                  0.0,
                  95.0),
              bodyPart(
                  "assets/abdomin.svg",
                  "Abdomin  \nDescription: The portion of the body between the chest and pelvis, containing the stomach and other digestive organs.",
                  175.0,
                  0.0,
                  0.0,
                  65.0),
              bodyPart(
                  "assets/pelvis.svg",
                  "Pelvis  \nDescription: The bony structure at the base of the spine, forming the foundation of the spine and supporting the torso.",
                  225.0,
                  0.0,
                  0.0,
                  50.0),
              bodyPart(
                  "assets/publs.svg",
                  "Publs  \nDescription: The front part of the pelvic bone, forming the anterior portion of the pelvis.",
                  275.0,
                  0.0,
                  0.0,
                  15.0),
              bodyPart(
                  "assets/left_soulder.svg",
                  "Left Soulder  \nDescription: The left joint connecting the arm to the torso.",
                  90.0,
                  105.0,
                  0.0,
                  50.0),
              bodyPart(
                  "assets/right_soulder.svg",
                  "Right Soulder  \nDescription:The right joint connecting the arm to the torso.",
                  89.0,
                  0.0,
                  110.0,
                  50.0),
              bodyPart(
                  "assets/left_arm.svg",
                  "Left Arm  \nDescription: The upper limb extending from the shoulder to the elbow on the left side.",
                  120.0,
                  145.0,
                  0.0,
                  70.0),
              bodyPart(
                  "assets/right_arm.svg",
                  "Right Arm  \nDescription:The joint connecting the forearm to the hand on the right side. ",
                  118.0,
                  0.0,
                  142.0,
                  70.0),
              bodyPart(
                  "assets/left_elbow.svg",
                  "Left Elbow  \nDescription: The joint connecting the upper arm to the forearm on the left side.",
                  172.0,
                  172.0,
                  0.0,
                  39.0),
              bodyPart(
                  "assets/right_elbow.svg",
                  "Right Elbow  \nDescription: The joint connecting the upper arm to the forearm on the right side.",
                  170.0,
                  0.0,
                  170.0,
                  40.0),
              bodyPart(
                  "assets/left_forearm.svg",
                  "Left Forearm  \nDescription:The portion of the arm between the elbow and the wrist on the left side. ",
                  195.0,
                  190.0,
                  0.0,
                  54.0),
              bodyPart(
                  "assets/right_forearm.svg",
                  "Right Forearm  \nDescription: The portion of the arm between the elbow and the wrist on the right side.",
                  195.0,
                  0.0,
                  190.0,
                  54.0),
              bodyPart(
                  "assets/left_wrist.svg",
                  "Left Wrist  \nDescription: The joint connecting the forearm to the hand on the left side.",
                  238.0,
                  220.0,
                  0.0,
                  23.0),
              bodyPart(
                  "assets/right_wrist.svg",
                  "Right Wrist  \nDescription: The joint connecting the forearm to the hand on the right side.",
                  238.0,
                  0.0,
                  220.0,
                  23.0),
              bodyPart(
                  "assets/left_hand.svg",
                  "Left Hand  \nDescription: The terminal part of the upper limb with fingers on the left side.",
                  250.0,
                  250.0,
                  0.0,
                  60.0),
              bodyPart(
                  "assets/right_hand.svg",
                  "Right Hand  \nDescription: The terminal part of the upper limb with fingers on the right side.",
                  250.0,
                  0.0,
                  250.0,
                  60.0),
              bodyPart(
                  "assets/left_thigh.svg",
                  "Left Thigh  \nDescription: The upper portion of the leg between the hip and the knee on the right side.",
                  242.0,
                  63.0,
                  0.0,
                  138.0),
              bodyPart(
                  "assets/right_thigh.svg",
                  "Right Thigh  \nDescription: The terminal part of the upper limb with fingers on the right side.",
                  242.0,
                  0.0,
                  63.0,
                  138.0),
              bodyPart(
                  "assets/left_knee.svg",
                  "Left Knee  \nDescription: The joint connecting the thigh to the lower leg on the left side.",
                  360.0,
                  68.0,
                  0.0,
                  48.0),
              bodyPart(
                  "assets/right_knee.svg",
                  "Right Knee  \nDescription: The joint connecting the thigh to the lower leg on the right side.",
                  360.0,
                  0.0,
                  68.0,
                  48.0),
              bodyPart(
                  "assets/left_leg.svg",
                  "Left Leg  \nDescription: The lower limb between the knee and the ankle on the left side.",
                  395.0,
                  64.0,
                  0.0,
                  105.0),
              bodyPart(
                  "assets/right_leg.svg",
                  "Right Leg  \nDescription: The lower limb between the knee and the ankle on the right side.",
                  393.0,
                  0.0,
                  65.0,
                  106.0),
              bodyPart(
                  "assets/left_ankle.svg",
                  "Left Ankle  \nDescription:  The joint connecting the leg to the foot on the left side.",
                  495.0,
                  64.0,
                  0.0,
                  25.0),
              bodyPart(
                  "assets/right_ankle.svg",
                  "Right Ankle  \nDescription: The joint connecting the leg to the foot on the right side.",
                  493.0,
                  0.0,
                  68.0,
                  25.0),
              bodyPart(
                  "assets/left_foot.svg",
                  "Left Foot  \nDescription: The terminal part of the lower limb with toes on the left side.",
                  510.0,
                  80.0,
                  0.0,
                  60.0),
              bodyPart(
                  "assets/right_foot.svg",
                  "Right Foot  \nDescription: The terminal part of the lower limb with toes on the right side.",
                  508.0,
                  0.0,
                  83.0,
                  56.0),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          const Text(
            'Select the Part of This Body',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  Widget bodyPart(String svgPath, String svgName, double marginTop,
      double marginRight, double marginLeft, double height) {
    bool isSelected = _selectedBodyPart == svgName;
    final Widget bodyPartSvg = SvgPicture.asset(
      svgPath,
      semanticsLabel: svgName,
      color: isSelected ? Colors.redAccent : Colors.orangeAccent,
    );
    return Container(
      margin:
          EdgeInsets.only(top: marginTop, right: marginRight, left: marginLeft),
      height: height,
      alignment: Alignment.topCenter,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedBodyPart = isSelected ? null : svgName;
            widget.onChanged(_selectedBodyPart);
          });
        },
        child: bodyPartSvg,
      ),
    );
  }
}
