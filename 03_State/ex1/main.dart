enum Event { START, GO, PAUSE, STOP, END }

enum State {
  INIT, //  accepts START -> STARTED
  STARTED, //  accepts GO -> RUNNING , STOP -> STOPPED
  RUNNING, //  accepts PAUSE -> PAUSING
  PAUSING, //  PAUSE -> END
  PAUSED, //  accepts GO -> RUNNING , STOP -> STOPPED
  STOPPED, //  accepts START -> STARTED , END -> END
  END
}

class StateMachine {
  State _state;
  var eventLookup = Map<State, List<Event>>();

  StateMachine() {
    this._state = State.INIT;
    eventLookup[State.INIT]=[Event.START];
    eventLookup[State.STARTED]=[Event.GO, Event.STOP];
    eventLookup[State.RUNNING]=[Event.PAUSE];
    eventLookup[State.PAUSING]=[];
    eventLookup[State.PAUSED]=[Event.STOP,Event.END];
    eventLookup[State.STOPPED]=[Event.START,Event.END];
  }

  State getState() {
    return _state;
  }

  StateMachine On(Event event) {
    if(!eventLookup[_state].contains(event)){
      print('$event - Not A Valid Event For State $_state');
      return this;
    }

    var old = _state;

    switch (event) {

      case Event.START:
        {
            _state = State.STARTED;
            print("Event.START / Application is Starting");
        }
        break;

      case Event.GO:
        {
          _state = State.RUNNING;
          print("Event.GO / Application is Go To Running");

        }
        break;

      default:
        {
          print("Unhandeled Event: $event");
          return this;

        }
    }
    print("State {from:$old , to:$_state}");
    return this;


  }
}

void main() {
  var stateMachine = StateMachine();
//
//  stateMachine.On(Event.START);
//  print("State Is: ${stateMachine.getState()} \n");
//
//  stateMachine.On(Event.GO);
//  print("State Is: ${stateMachine.getState()}\n");
//
//  stateMachine.On(Event.PAUSE);
//  print("State Is: ${stateMachine.getState()}\n");

stateMachine.On(Event.START).On(Event.GO);
//stateMachine..On(Event.START)..On(Event.GO);

print(stateMachine.getState());
}
