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
}

