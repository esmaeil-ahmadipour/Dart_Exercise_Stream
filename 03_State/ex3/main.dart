import 'dart:async';

enum Event { INCREASE, DECREASE, RESET }

class State {
  var counter;

  State() {
    this.counter = 0;
  }
}

class CounterBloc {
  State _state;
  StreamController _streamController;

  //determine which events are valid for e given state
  var eventLookUp = Map<State, List<Event>>();

  CounterBloc() {
    _state = State();
    _streamController = StreamController<int>();
  }

  Stream<int> getStream() {
    return _streamController.stream;
  }

  void On(Event event) {
    switch (event) {
      case Event.INCREASE:
        {
          _state.counter++;
        }
        break;

      case Event.DECREASE:
        {
          _state.counter--;
        }
        break;

      case Event.RESET:
        {
          _state = State();
        }
        break;
    }
    _streamController.add(_state.counter);
  }
}

void main() {
  var stateMachine = CounterBloc();

  stateMachine.getStream().listen((onData){
    print("Listener ==> $onData");
  });


  stateMachine.On(Event.INCREASE);
  stateMachine.On(Event.INCREASE);
  stateMachine.On(Event.DECREASE);
  stateMachine.On(Event.RESET);
  stateMachine.On(Event.DECREASE);



}
