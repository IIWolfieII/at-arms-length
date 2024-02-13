import 'package:flutter/material.dart';
import 'package:at_arms_length/models/pinned.dart';

class Pin extends StatelessWidget {
  final Pinned pinned;

  const Pin({required this.pinned});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[Text(pinned.text), Text(pinned.type.name)],
    );
  }
}
