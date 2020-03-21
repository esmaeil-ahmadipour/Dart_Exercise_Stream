import 'dart:async';

class TimeBloc {
  StreamController<DateTime> _streamController;
  bool _isEnableListening = false;

  TimeBloc() {
    _streamController = StreamController<DateTime>.broadcast(
        onListen: _onListen, onCancel: _onCancel);
  }

  void _onListen() {
    print("Listening => Enable");
    _isEnableListening = true;
    start();
  }

  void _onCancel() {
    print("Listening => Disable");
    _isEnableListening = false;
  }

  start() {
    Future.doWhile(() {
      return Future.delayed(Duration(seconds: 1), () {
        On();
        return _isEnableListening;
      });
    });
  }

  Stream<DateTime> getStream() {
    return _streamController.stream;
  }

  void On() {
    if (_isEnableListening) {
      print("\nSend Data To Event..");
      _streamController.add(DateTime.now());
    }
  }
}

void main() {
  var stateMachine = TimeBloc();

  var subscribe1 = stateMachine.getStream().listen((onData) {
    print("Listener 1 ==> $onData");
  });

  var subscribe2 = stateMachine.getStream().listen((onData) {
    print("Listener 2 ==> $onData");
  });

  Future.delayed(Duration(seconds: 3), () {
    subscribe1.pause();
  });
  Future.delayed(Duration(seconds: 12), () {
    subscribe1.resume();
  });
  Future.delayed(Duration(seconds: 15), () {
    subscribe1.cancel();
  });
  Future.delayed(Duration(seconds: 15), () {
    subscribe2.cancel();
  });
}
