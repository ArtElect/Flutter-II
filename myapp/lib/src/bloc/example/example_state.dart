import 'package:flutter/foundation.dart';
import 'package:myapp/src/bloc/library/bloc_event.dart';
import 'package:myapp/src/bloc/library/bloc_state.dart';

class ExampleState extends BlocState<int> {
  ExampleState() {
    state = ValueNotifier(0);
  }

  @override
  int updateState<E extends BlocEvent>(E event) {
    if (event.event == "Click") {
      state.value += 1;
    }
    return 0;
  }
}
