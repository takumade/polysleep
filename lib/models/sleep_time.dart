class SleepTime {
  final String id;
  final String name;
  final String difficulty;
  final String proposer = "puredoxyk";
  final List<SleepType> sleepTypes;
  List<SleepVariants> sleepVariants = [];

  SleepTime({required this.id, required this.name, required this.difficulty, required this.sleepTypes, required this.sleepVariants});

}

class SleepVariants {
  final String name;
  List<SleepType> sleepTypes = [];

  SleepVariants({required this.name, required this.sleepTypes});
}

class  SleepType {
  final String name;
  final String startTime;
  final String endTime;
  final SleepTypeEnum type;

  SleepType({required this.name, required this.startTime, required this.endTime, required this.type});
}

enum SleepTypeEnum {
  core,
  nap,
  custom
}