import 'package:myapp/src/bloc/library/bloc_event.dart';

abstract class ExampleEvent extends BlocEvent {
  @override
  String? get event => throw UnimplementedError();
}

class ExampleClickEvent extends ExampleEvent {
  @override
  String? get event => "Click";
}
