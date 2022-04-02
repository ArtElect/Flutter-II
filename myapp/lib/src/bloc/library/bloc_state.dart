import 'package:flutter/material.dart';
import 'package:myapp/src/bloc/library/bloc_event.dart';

abstract class BlocState<T> {
  late ValueNotifier<T> state;

  T updateState<E extends BlocEvent>(E event);
}
