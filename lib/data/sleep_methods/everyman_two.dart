import 'package:polysleep/models/sleep_time.dart';

List<SleepTime> everyman1 = [
  SleepTime(id: "e2", name: "Everyman 2", difficulty: "Moderate", sleepTypes: [
    SleepType(
        name: "Core",
        startTime: "23:00",
        endTime: "03:30",
        type: SleepTypeEnum.core),
    SleepType(
        name: "Morning Nap",
        startTime: "08:00",
        endTime: "08:20",
        type: SleepTypeEnum.nap),
    SleepType(
        name: "Daytime Nap",
        startTime: "14:30",
        endTime: "14:50",
        type: SleepTypeEnum.nap),
  ], sleepVariants: [
    SleepVariants(name: "5h Core", sleepTypes: [
      SleepType(
          name: "Core",
          startTime: "23:00",
          endTime: "04:00",
          type: SleepTypeEnum.core),
      SleepType(
          name: "Morning Nap",
          startTime: "08:00",
          endTime: "08:20",
          type: SleepTypeEnum.nap),
      SleepType(
          name: "Daytime Nap",
          startTime: "14:30",
          endTime: "14:50",
          type: SleepTypeEnum.nap),
    ]),
    SleepVariants(name: "Early Core", sleepTypes: [
      SleepType(
          name: "Core",
          startTime: "21:00",
          endTime: "01:30",
          type: SleepTypeEnum.core),
      SleepType(
          name: "Morning Nap",
          startTime: "06:50",
          endTime: "07:10",
          type: SleepTypeEnum.nap),
      SleepType(
          name: "Daytime Nap",
          startTime: "12:40",
          endTime: "13:00",
          type: SleepTypeEnum.nap),
    ]),
    SleepVariants(name: "Late Core", sleepTypes: [
      SleepType(
          name: "Core",
          startTime: "00:30",
          endTime: "05:00",
          type: SleepTypeEnum.core),
      SleepType(
          name: "Morning Nap",
          startTime: "09:00",
          endTime: "09:20",
          type: SleepTypeEnum.nap),
      SleepType(
          name: "Daytime Nap",
          startTime: "16:10",
          endTime: "16:30",
          type: SleepTypeEnum.nap),
    ]),
  ])
];
