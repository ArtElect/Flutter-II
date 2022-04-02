import 'package:flutter/material.dart';

abstract class BlocEvent extends Object {
  String? get event;

  @override
  String toString() {
    return event.toString();
  }
}
