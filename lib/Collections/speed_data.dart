import 'package:isar/isar.dart';

part 'speed_data.g.dart';


@Collection()
class SpeedData {
  Id id = Isar.autoIncrement;
  late int carNumber;
  late int speed;
  late DateTime timestamp;

  SpeedData(this.carNumber, this.speed, this.timestamp);
}