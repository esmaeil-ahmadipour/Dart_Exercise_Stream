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

  StateMachine() {
    this._state = State.INIT;
  }

  State getState() {
    return _state;
  }

  void On(Event event) {
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
        }
    }
    print("State {from:$old , to:$_state}");

  }
}

void main() {
  var stateMachine = StateMachine();

  stateMachine.On(Event.START);
  print("State Is: ${stateMachine.getState()} \n");

  stateMachine.On(Event.GO);
  print("State Is: ${stateMachine.getState()}\n");

  stateMachine.On(Event.END);
  print("State Is: ${stateMachine.getState()}\n");
}
