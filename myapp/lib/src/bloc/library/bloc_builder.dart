import 'package:flutter/material.dart';
import 'package:myapp/src/bloc/library/bloc_state.dart';

class BlocBuilder<T extends BlocState> {
  final Widget Function(BuildContext, T) builder;

  const BlocBuilder({
    Key? key,
    required this.builder,
  });

  Widget build(BuildContext context, T state) {
    return StatefulBuilder(builder: ((context, setState) {
      state.state.addListener(() => setState(() {}));
      return builder(context, state);
    }));
  }
}
