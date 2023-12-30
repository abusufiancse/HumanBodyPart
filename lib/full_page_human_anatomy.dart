library human_anatomy;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humanbody/utils.dart';

import 'human_anatomy.dart';

class FullPageHumanAnatomy extends StatefulWidget {
  final Map mapData;
  final Widget container;
  final String title;
  final String route;

  const FullPageHumanAnatomy(
      {Key? key,
      required this.mapData,
      required this.container,
      required this.title,
      required this.route})
      : super(key: key);

  @override
  State<FullPageHumanAnatomy> createState() => _FullPageHumanAnatomyState();
}

class _FullPageHumanAnatomyState extends State<FullPageHumanAnatomy> {
  var _finalBodyPartList = [];

  @override
  Widget build(BuildContext context) {
    print(widget.mapData);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          widget.container,
          TopTitle(
            topMargin: 136.0,
            leftMargin: 66.0,
            title: widget.title,
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 80.0),
            child: HumanAnatomy(
              onChanged: bodyPartList,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              backgroundColor: Colors.black87,
              child: const Icon(Icons.arrow_forward),
              onPressed: () {
                widget.mapData['bodyPart'] = _finalBodyPartList.toString();

                _finalBodyPartList.isEmpty
                    ? Utils().showMyDialog(
                        context, "Please Select Affected Body Part")
                    : Navigator.pushNamed(context, widget.route,
                        arguments: widget.mapData);
              },
            ),
          ),
          MyBackButton(),
        ],
      ),
    );
  }

  void bodyPartList(List value) {
    _finalBodyPartList = value;
  }
}