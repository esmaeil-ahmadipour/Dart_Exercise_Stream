void main() {
  eventHandler("Hello Flutter!");
  Stream<int> stream = Stream.empty();
  stream.listen(
      eventHandler,
  );

}

eventHandler(eventValue) {
  print("Event Value Is: ${eventValue}");
}