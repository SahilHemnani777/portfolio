import 'package:flutter/material.dart';
import 'package:portfolio/containers/2.dart';
import 'package:portfolio/containers/3.dart';
import 'package:portfolio/containers/4.dart';
import 'package:portfolio/containers/5.dart';
import 'package:portfolio/containers/6.dart';

import '../containers/1.dart';

List<Widget> widgets = [One(), Two(), Threee(), Four(), Five(), Six()];

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widgets.length,
      itemBuilder: (BuildContext context, int index) {
        return widgets.elementAt(index);
      },
      separatorBuilder: (BuildContext context, int index) => Center(
          child: const Text(
              "////////////////////////////////////////////////"
                  "//////////////////////////////////////////////////////////"
                  "///////////////////////////////////////////", style: TextStyle(fontWeight: FontWeight.bold),)),
    );
  }
}
