import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../Collections/speed_data.dart';


class IsarService {
  late Future<Isar> db;
  IsarService() {
  db = _init();
}

Future<Isar> _init() async {
  final dir = await getApplicationDocumentsDirectory();
  if(Isar.instanceNames.isEmpty){
  return await Isar.open(
    [SpeedDataSchema],
    directory: dir.path,
    inspector: true
  );
  }
  return Future.value(Isar.getInstance());
}

Future<void> saveSpeedData(SpeedData speedData) async {
  final isar = await db;
  isar.writeTxnSync(() => isar.speedDatas.putSync(speedData));
}

Future<List<SpeedData>> getSpeedData() async {
  final isar = await db;
  return await isar.speedDatas.where().findAll();
}
}