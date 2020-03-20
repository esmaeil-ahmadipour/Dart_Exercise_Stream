enum Event { INCREASE, DECREASE, RESET }

class State {
  var counter;

  State() {
    this.counter = 0;
  }
}

class CounterBloc {
  State _state;

  //determine which events are valid for e given state
  var eventLookUp = Map<State, List<Event>>();

  CounterBloc() {
    _state = State();
  }

  int getState() {
    return _state.counter;
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
  }
}

void main() {
  var stateMachine = CounterBloc();

  stateMachine.On(Event.INCREASE);
  print(stateMachine.getState());

  stateMachine.On(Event.INCREASE);
  print(stateMachine.getState());

  stateMachine.On(Event.INCREASE);
  print(stateMachine.getState());

  stateMachine.On(Event.DECREASE);
  print(stateMachine.getState());

  stateMachine.On(Event.RESET);
  print(stateMachine.getState());

  stateMachine.On(Event.DECREASE);
  print(stateMachine.getState());
}
