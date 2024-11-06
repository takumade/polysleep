class SleepTime {
  final String id;
  final String name;
  final String difficulty;
  final List<SleepType> sleepTypes;
  List<SleepVariants> sleepVariants = [];

  SleepTime({required this.id, required this.name, required this.difficulty, required this.sleepTypes});

}

class SleepVariants {
  List<SleepType> sleepTypes = [];
}

class  SleepType {
  final String name;
  final DateTime startTime;
  final DateTime endTime;
  final SleepTypeEnum type;

  SleepType({required this.name, required this.startTime, required this.endTime, required this.type});
}

enum SleepTypeEnum {
  core,
  nap,
  custom
}