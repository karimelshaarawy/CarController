import 'dart:async';
import 'dart:math';

class DataStreamController {
  Stream<int> currentActivationStream() async* {
    Random random = Random();
    while (true) {
      yield random.nextInt(4000);
      await Future.delayed(Duration(milliseconds: 250));
    }
  }

  Stream<int> noActivationStream() async* {
    while (true) {
      yield 50;
      await Future.delayed(Duration(milliseconds: 250));
    }
  }

  Stream<int> maxActivationStream() async* {
    while (true) {
      yield 4000;
      await Future.delayed(Duration(milliseconds: 250));
    }
  }


  int mapToSpeed(int activationValue, int minActivation, int maxActivation) {
    if (activationValue < minActivation) return 0;
    if (activationValue > maxActivation) return 100;
    return ((activationValue - minActivation) / (maxActivation - minActivation) * 100).toInt();
  }
}